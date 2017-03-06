:- module(_, [], [fsyntax, assertions, regtypes, dcg]).

:- doc(title, "The standalone command-line builder").
:- doc(author, "Ciao Development Team").
:- doc(author, "Jose F. Morales").

:- doc(module, "
@cindex{builder, standalone} @apl{ciao_builder} is the Ciao standalone
command-line builder. @apl{ciao_builder} can be used to manage Ciao
source code organized as @concept{bundle}s. 

This command is available to the user in two forms: wrapped around the
@tt{ciao-boot.sh} (or @tt{ciao-boot.bat} in Windows) scripts (see
@ref{Bootstrapping the build system}), or as part of the general
@apl{ciao} command-line tool.

@section{Introduction to the build process}

This picture shows a detailed view all the elements of the build and
installation process of a @concept{bundle} or collection of bundles.

@begin{verbatim}
    Phase 0-
       Bootstrapping the build system
    Phase 1-
       SOURCE ---(configure)--> CONFIG
    Phase 2- (needs CONFIG)
       SOURCE ---(build)--> BUILD --(install)--> INSTALLED
@end{verbatim}

Above, arrows specify actions and nodes are collections of files:

@begin{description}
@item{SOURCE} Source code
@item{CONFIG} Configuration of the source
@item{BUILD} Binaries, compiled libraries, and generated
  documentation (.pdf, .html, etc.)
@item{INSTALLED} Copies of BUILD that exclude temporary files (mostly
  caches for separate and incremental compilation).
@end{description}

The source distribution only contains SOURCE elements. The actions
@tt{build} and @tt{install} create the BUILD and INSTALLED elements.

NOTE: Bootstrapping is a transparent process and its details are not
needed to understand and use the build system. See @ref{Bootstrapping
the build system} for more details on @em{phase 0}.

@section{Configuration and build}

@begin{alert}
TODO: complete
@end{alert}

Configuration and build can be reverted with @em{clean} commands.  The
meaning of @tt{clean} and @tt{distclean} is based on their standard
meaning (see the @tt{Makefile} example at
@href{http://www.gnu.org/software/make/manual/html_node/Complex-Makefile.html}),
except for @tt{realclean} that cleans both the system and the
bootstrap (equivalent to @tt{distclean} and @tt{boot-clean}).

The following table summarizes the actions that @em{undo} each build
or install operation:

@begin{verbatim}
    ('undo' reverts the effect of each marked 'action') 
                  ,--------+-----------+-----------.
   actions \\\\ undo | clean  | distclean | realclean |
 .----------------+--------+-----------+-----------+
 | boot-build     |        |           |    x      |
 +----------------+--------+-----------+-----------+
 | configure      |        |     x     |    x      |
 +----------------+--------+-----------+-----------+
 | build          |   x    |     x     |    x      |
 `----------------+--------+-----------+-----------+
@end{verbatim}

@section{Installation}

Different installation areas are supported. For personal
installations, the installation area can overlap with the build
staging area, such that no extra space is necessary.

@begin{verbatim}

          .............         install             ...........
          .           .---------------------------->.         .
          .           .        (generated           .         .
          .............         files such          ...........
       Build Staging Area       as binaries)      Installation Area
               .^.                                 _
                | build                            /|
                |                                 /
          .............          install         /
          .           .-------------------------'
          .           .         (source files
          .............          such as examples,
           Source Code           images, etc.)
@end{verbatim}

The @tt{install} command is undone with the @tt{uninstall} command.

@section{Bootstrapping the build system}

The @tt{ciao-boot.sh} (or @tt{ciao-boot.bat} in Windows) automatically
bootstraps and invokes the Ciao build system. The process is described
below.

Bootstrapping is the process that compiles the Ciao compiler and
builder in an environment where no existing Ciao binary exists. We
follow the same @em{phase 1} and @em{phase 2} steps above but the
whole process is driven by a very simplified version written in
(portable) shell-script code (since there is no running Ciao) and
using the @tt{ciaoc} @em{bootstrap compiler}.

The @tt{ciaoc} bootstrap compiler comes in a pre-compiled bytecode
form. This bytecode, together with the engine parts written in C, can
be executed in most systems with a C compiler. 

Once this bootstrap compiler is available, the system compiles the
bootstrap @apl{ciao_builder}, which drives the rest of the build and
installation process.

This step is transparent to the user and separated in a different
build directory (@tt{build-boot/}). However, there are options to
force the recompilation and cleaning of that part (see
@tt{ciao-boot.sh} help for more information).").

:- doc(bug, "Avoid ciao_builder mix .po/.itf of bootstrap and final
   ciaoc; use CIAOCACHEDIR for @apl{ciao_builder} compilation,
   independently of whether CIAOCACHEDIR is used by the user.").

% TODO: document that opts and flags may end in '--'
% TODO: move cmd_fmt and ciaocl_help together
% TODO: allow --target=Tgt for some commands? (e.g., custom_run)
% TODO: obtain bundle origin from catalog (if possible)
% TODO: 'ciao get' must be recursive (it should get dependencies automatically)

% ===========================================================================

:- use_module(library(terms), [atom_concat/2]).
:- use_module(library(format), [format/3]).
:- use_module(library(errhandle), [handle_error/2]).
:- use_module(library(messages), [error_message/2]).

:- use_module(ciaobld(builder_cmds),
	[builder_cleanup/0,
	 builder_cmd_nobndl/1,
	 builder_cmd_on_set/2,
	 'cmd.needs_update_builder'/1,
	 'cmd.needs_rescan'/1]).
:- use_module(ciaobld(bundle_fetch),
	[check_bundle_alias/3,
	 add_bundle_origin/2,
	 bundle_fetch_cleanup/0]).
:- use_module(ciaobld(builder_flags),
	[set_builder_flag/2, cleanup_builder_flags/0]).
:- use_module(ciaobld(builder_aux), [bundle_at_dir/2, ciao_path_at_dir/2]).
:- use_module(ciaobld(bundle_configure), [check_builder_update/0]).

:- use_module(ciaobld(ciaocl_help)).
:- use_module(ciaobld(ciaocl_parser)).

% ===========================================================================

% Invocation from the command-line interface
:- export(main/1).
main(Args) :-
	catch(main_(Args), E, handle_builder_error(E)),
	!.
    
main_([Help0|Args]) :-
	norm_underscores(Help0, Help),
	help_mode(Help, Level, Prof), 
	!,
	( Args = [] ->
	    show_help(Level, Prof)
	; Args = [Arg0] ->
	    norm_underscores(Arg0, Cmd),
	    show_help_cmd(Cmd, Prof)
	; fail
	).
main_(Args) :-
	parse_cmd(Args, Cmd, Opts),
	cleanup, % TODO: repeat just in case...
	set_opts(Opts),
	run_cmd(Cmd),
	cleanup.

help_mode('help', summary, normal).
help_mode('help_all', all, normal).
help_mode('help_boot', summary, boot).
help_mode('help_all_boot', all, boot).

cleanup :-
	builder_cleanup,
	bundle_fetch_cleanup,
	cleanup_builder_flags.

set_opts([]).
set_opts([Opt|Opts]) :- set_opt(Opt), set_opts(Opts).

% TODO: ad-hoc, it does not take command into account
set_opt(opt(interactive)) :- !,
	set_builder_flag(interactive_config, true).
set_opt(opt(docs)) :- !,
	set_builder_flag(grade_docs, true).
set_opt(opt(bin)) :- !,
	set_builder_flag(grade_bin, true).
%set_opt(opt(norec)) :- !,
%	set_builder_flag(recursive, false).
set_opt(opt(r)) :- !,
	set_builder_flag(recursive, same_workspace).
set_opt(opt(x)) :- !,
	set_builder_flag(recursive, all_workspaces).
set_opt(opt(Name, Value)) :- !,
	set_builder_flag(Name, Value).
set_opt(Opt) :-
	throw(unknown_opt(Opt)).

run_cmd(cmd_on_set(Cmd0, Targets)) :-
	( 'cmd.needs_update_builder'(Cmd0) ->
	    check_builder_update
	; true
	),
	( 'cmd.needs_rescan'(Cmd0) ->
	    % TODO: rescursive all_workspaces does not rescan all workspaces, fix
	    rescan_targets(Targets)
	; true
	),
	resolve_targets(Targets, Targets2),
	set_default_recursive(Targets2),
	builder_cmd_on_set(Cmd0, Targets2),
	post_message(Cmd0).
run_cmd(cmd(Cmd0)) :-
	builder_cmd_nobndl(Cmd0).

set_default_recursive(Targets) :-
	( member(~root_bundle, Targets) ->
	    % For root_bundle, enable recursive by default
	    set_builder_flag(recursive, all_workspaces)
	; true
	).

% ---------------------------------------------------------------------------

:- use_module(ciaobld(messages_aux), [normal_message/2]).
:- use_module(library(system_extra), [using_tty/0]).

% Show a help message after the command (only when run from a TTY)
post_message(Cmd) :-
	( using_tty ->
	    show_post_message(Cmd)
	; true
	).

show_post_message(configure(_)) :- !,
	normal_message(
"
Please check that all the configuration values above (if any) are
correct. If not, you can change or customize the configuration using
the command line or --interactive configure flag.

To continue the installation, execute 'build' and 'install' commands.", []).
show_post_message(_).

% ---------------------------------------------------------------------------
:- doc(section, "Updating and resolving targets").

:- use_module(ciaobld(bundle_scan), [root_bundle/1]).
:- use_module(ciaobld(bundle_scan), [scan_bundles_at_path/1]).
:- use_module(engine(internals), [ciao_root/1]).
:- use_module(engine(internals),
	['$bundle_id'/1,
	 '$bundle_srcdir'/2]).

:- data target_ciao_path/1. 

% (Re)scan bundles at the workspaces where targets are located
% NOTE: a "ciao path" is a workspace
rescan_targets(Targets) :-
	retractall_fact(target_ciao_path(_)),
	collect_ciao_paths(Targets),
	( target_ciao_path(Path),
	    scan_bundles_at_path(Path),
	    fail
	; true
	),
	retractall_fact(target_ciao_path(_)).

collect_ciao_paths([]).
collect_ciao_paths([Target|Targets]) :-
	( target_to_ciao_path(Target, Path) ->
	    ( target_ciao_path(Path) -> true
	    ; assertz_fact(target_ciao_path(Path))
	    )
	; true
	),
	collect_ciao_paths(Targets).

% (Fail if target is not a dir under a ciao path nor a registered or
% root bundle)
target_to_ciao_path(Target, Path) :- is_dir(Target), !,
	ciao_path_at_dir(Target, Path).
target_to_ciao_path(Target, Path) :-
	( root_bundle(Target) -> % TODO: rename by sys_target (alias for ciao_root workspace)
	    ciao_root(Path)
	; '$bundle_id'(Target), Bundle = Target,
	  '$bundle_srcdir'(Bundle, Path0), % not ~root_bundle
	  ciao_path_at_dir(Path0, Path)
	).

% Resolve targets (which may be paths), assume rescan_targets/1 has been called
resolve_targets([], []).
resolve_targets([Target0|Targets0], [Target|Targets]) :-
	resolve_target(Target0, Target),
	resolve_targets(Targets0, Targets).

resolve_target(Target0, Target) :-
	( is_dir(Target0),
	  catch(bundle_at_dir(Target0, Target), _, fail) ->
	    true
	; check_bundle_alias(Target0, Origin, Bundle) ->
            add_bundle_origin(Bundle, Origin),
	    Target = Bundle
	; Target = Target0 % TODO: Assume this is a part (E.g., core.engine); do some checks?
	).

:- use_module(library(system), [file_properties/6]).

% TODO: duplicated
is_dir(Path) :-
        prolog_flag(fileerrors, OldFE, off),
        file_properties(Path, directory, [], [], [], []),
        set_prolog_flag(fileerrors, OldFE).

% ===========================================================================
:- doc(section, "Handle errors").

handle_builder_error(error_msg(Format, Args)) :-
	error_message(Format, Args),
	halt(1).
handle_builder_error(not_in_builder_boot(Cmd)) :-
	error_message("Command '~w' only available in 'ciao-boot.sh' or 'ciao-boot.bat'.~n", [Cmd]),
	halt(1).
handle_builder_error(unknown_bundle(Bundle)) :-
	error_message(
% ...........................................................................
"'~w' does not look like a bundle.~n"||
"~n"||
"It does not correspond to the name of a bundle or a path to a known bundle.~n"||
"Some possible reasons are: the Manifest.pl file is missing, the bundle~n"||
"directory is not reachable from any path defined in CIAOPATH, or the bundle~n"||
"does not contain the ACTIVATE mark (for catalogues).~n"||
"You may also try 'rescan-bundles' to update the list of bundles.~n", [Bundle]),
	halt(1).
handle_builder_error(unknown_cmd(Cmd)) :-
	error_message("Unknown command '~w'.~n", [Cmd]),
	halt(1).
handle_builder_error(builder_cmd_failed(Bundle, '', Target)) :- !,
	error_message("Command '~w' on bundle '~w' failed.~n", [Target, Bundle]),
	halt(1).
handle_builder_error(builder_cmd_failed(Bundle, Part, Target)) :-
	error_message("Command '~w' on bundle '~w' (part '~w') failed.~n", [Target, Bundle, Part]),
	halt(1).
handle_builder_error(error(Error, Where)) :-
	handle_error(Error, Where).
handle_builder_error(Error) :-
	error_message("Unknown error '~w'.~n", [Error]),
	halt(1).


