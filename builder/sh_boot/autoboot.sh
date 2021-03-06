#
#  autoboot.sh
#
#  Automatic build of bootstrappable executables
#
#  Copyright (C) 2015-2017 Jose F. Morales, Ciao Developer team
#
# ===========================================================================
#
# Usage: include this code in your script ('.' or 'source')
#
# Required input variables:
#   $ciaoroot: environment variable pointing to the root of Ciao sources
#
#   $target_name: target name for cmd_message
#
#   $eng_name: engine name
#   $eng_cfg: engine configuration name (e.g., platform+debug/release)
#   $boot_ciaoc: location of static ciaoc.sta for bootstrap
#
#   + output of scan_bootstrap_opts.sh (boot__*, etc.)
#
# Required functions:
#   no_bootstrap_error: function invoked when bootstrap is missing
#   failed_bootstrap_error: invoked when bootstrap is could not be built 
#
# Exports:
#   autoboot_autobuild
#   autoboot_build
#   autoboot_exec
# ---------------------------------------------------------------------------

boot_cmd_message() {
    echo "=> $target_name: $*" 1>&2
}
boot_dmc_message() {
    true
}
boot_normal_message() {
    echo "   $*" 1>&2
}

# ---------------------------------------------------------------------------

# Path translation from this script to Ciao
# (for cross-compilation)
case `uname -s` in
    MINGW*) pathtrans=mingw_to_win ;;
    *) pathtrans=no ;;
esac

crossp() {
    if [ x"$pathtrans" = x"mingw_to_win" ]; then
	cygpath -w "$@"
    else
	echo "$@"
    fi
}

# Create a predefined 'core.bundlecfg_sh' for bootstrap
builddir_configure_boot() { # builddir
    local builddir="$1"
    test -d "$builddir/bundlereg" || mkdir -p "$builddir/bundlereg"

    cat > "$builddir/bundlereg/core.bundlecfg_sh" <<EOF
core__USE_THREADS=yes
core__AND_PARALLEL_EXECUTION=no
core__PAR_BACK=no
core__TABLED_EXECUTION=no
core__OPTIM_LEVEL=optimized
core__DEBUG_LEVEL=$boot__DEBUG_LEVEL
#
core__ARCH="$boot__ARCH"
core__OS="$boot__OS"
core__CUSTOM_CC="$boot__CUSTOM_CC"
core__CUSTOM_LD="$boot__CUSTOM_LD"
core__EXTRA_CFLAGS="$boot__EXTRA_CFLAGS"
core__EXTRA_LDFLAGS="$boot__EXTRA_LDFLAGS"
EOF
}

# Create initialization C files
builddir_create_init_boot() {
    mkdir -p "$bld_cdir"
    cat > "$bld_cdir/eng_static_mod.c" <<EOF
EOF
}

# Generate version.h and version.c
builddir_version_info_boot() {
    # version.h:
    local eng_h_alias="ciao"
    mkdir -p "$bld_hdir/$eng_h_alias"
    cat > "$bld_hdir/$eng_h_alias/version.h" <<EOF
#define CIAO_VERSION_STRING "Ciao (autoboot)"
EOF

    # version.c:
    mkdir -p "$bld_cdir"
    cat > "$bld_cdir/version.c" <<EOF
char *ciao_version = "0";
char *ciao_patch = "0";
char *ciao_commit_branch = "unknown";
char *ciao_commit_id = "unknown";
char *ciao_commit_date = "unknown";
char *ciao_commit_desc = "unknown";
EOF
}

# Create a predefined 'meta_sh' and perform sysdep configuration
# (generate 'config_mk' and 'config_sh')
builddir_config_sysdep_boot() { # builddir
    # (requires: $eng_name, $eng_cfg)
    local builddir="$1"
    mkdir -p "$bld_cfgdir"
    cat > "$bld_cfgdir/meta_sh" <<EOF
eng_name="$eng_name"
eng_h_alias="ciao"
eng_srcpath="$ciaoroot/core/engine"
eng_use_stat_libs=no
eng_default_ciaoroot="$ciaoroot"
eng_addobj=
eng_addcfg=
eng_core_config="$builddir/bundlereg/core.bundlecfg_sh"
EOF
    # Do sysdep configuration
    "$sh_src_dir"/config-sysdep/config-sysdep.sh "$bld_engdir" "$eng_cfg"
}

# Select $bld_engdir (and $bld_cfgdir, $bld_hdir, $bld_cdir, $bld_objdir)
setup_eng_vars() { # builddir
    # (requires: $eng_name, $eng_cfg)
    local builddir="$1"
    shift
    if [ x"$eng_name" = x"" -o x"$eng_cfg" = x"" ] ; then
	cat >&2 <<EOF
INTERNAL_ERROR: missing $eng_name or $eng_cfg in setup_eng_vars
EOF
	exit 1
    fi

    bld_engdir="$builddir/eng/$eng_name"
    bld_cfgdir="$bld_engdir/cfg/$eng_cfg"
    bld_hdir="$bld_engdir/include"
    bld_cdir="$bld_engdir/src"
    bld_objdir="$bld_engdir/objs/$eng_cfg"
}

# Execute $cpxexec using the given $builddir
builddir_exec() { # builddir $cpxexec [ARGS] (and env)
    # (requires: $eng_name, $eng_cfg, 
    #            $default_ciaoaliaspath, $default_ciaopath, $ciaoroot)
    local builddir="$1"
    local cpxexec="$2"
    shift
    shift

    setup_eng_vars "$builddir"

    local eng_cfg_sh="$bld_cfgdir/config_sh"
    # TODO: find a better way to load those variables
    local execsuffix=`. "$eng_cfg_sh"; echo "$EXECSUFFIX"`
    local engexec="$bld_objdir/$eng_name""$execsuffix"

    engdbg=""
    engopts=""
    if [ x"$boot__DEBUG_LEVEL" = x"debug" ]; then
	# Use the C debugger to debug this run
	# TODO: customize for other debuggers, allow interaction
	# before/after execution, etc.
	engdbg="lldb -o run -o quit --"
	# engopts="--trace-calls --trace-instr --debug-gc"
    fi
    CIAOPATH="$default_ciaopath" \
        CIAOALIASPATH="$default_ciaoaliaspath" \
	CIAOROOT=`crossp "$ciaoroot"` \
	CIAOHDIR=`crossp "$bld_hdir"` \
	CIAOENGINE=`crossp "$engexec"` \
	    $engdbg "$engexec" "$@" -C -b "$cpxexec" $engopts
}

# Invoke the engine build operation on builddir
builddir_do_engine() { # builddir (env: booteng_cdir)
    local builddir="$1"
    shift
    setup_eng_vars "$builddir"
    BLD_ENGDIR="$bld_engdir" ENG_CFG="$eng_cfg" BOOTENG_CDIR="$booteng_cdir" \
	"$sh_src_dir"/build_engine.sh "$@"
}

# ---------------------------------------------------------------------------

# Location of (static) executable for 'mainmod' in 'builddir'
get_mainexec() { # builddir mainmod
    echo "$1/bin/`basename "$2"`.sta"
}

# Build or check if 'mainmod' is already compiled, and depending on
# the value of $autobuild:
#
#  - $autobuild==no:      prompt an error if it does not exists
#  - $autobuild==yes:     build if it does not exists
#  - $autobuild==rebuild: rebuild (incrementally), even if it exists
#
autoboot_autobuild() { # builddir mainmod (requires: $autobuild)
    local mainexec=`get_mainexec "$1" "$2"`
    if [ ! x"$autobuild" = x"rebuild" ] && \
       [ -f "$mainexec" ] && \
       builddir_do_engine "$1" engine_is_ok; then
	return # Bootstrap is ready
    fi

    if [ x"$autobuild" = x"no" ]; then
        # TODO: detect (mark) in builddir if bootstrap
        #   compilation failed or it is just missing
	no_bootstrap_error
	exit 1
    fi
    # $autobuild==yes or $autobuild==rebuild
    builddir_configure_boot "$1"
    setup_eng_vars "$1"
    builddir_create_init_boot
    builddir_version_info_boot
    builddir_config_sysdep_boot "$1"
    if autoboot_build "$1" "$2"; then
	true
    else
	failed_bootstrap_error
    fi
}

# Build 'mainmod'
autoboot_build() { # builddir mainmod
    local builddir="$1"
    local mainexec=`get_mainexec "$1" "$2"`
    local mainname=`basename "$2"`
    boot_cmd_message "building [boot]"
#    boot_normal_message "compiling native code for `basename "$boot_ciaoc"` $boot__OS$boot__ARCH (engine)"
    boot_normal_message "compiling $eng_name.$boot__OS$boot__ARCH (engine for `basename $boot_ciaoc`)"
    if booteng_cdir=`dirname "$boot_ciaoc"` builddir_do_engine "$builddir" build; then
	true
    else
	return 1
    fi
    # Backup exec_header, create a dummy one
    # TODO: an option in ciaoc to skip exec_header instead
    local header="$ciaoroot/core/lib/compiler/header"
    if [ -f "$header" ]; then
	mv "$header" "$header".tmp
    fi
    touch "$header"
    #
    boot_normal_message "compiling $mainname (command) [using `basename "$boot_ciaoc"`]"
    #
    # Build a static executable using the bootstrap 'ciaoc'.
    # It must be static to avoid bootstrapping problems (the compiler
    # compiling its own libraries).
    #
    # TODO: CIAOCACHEDIR may allow non-static exec here
    #
    mkdir -p "$builddir/bin"
    builddir_exec "$builddir" "$boot_ciaoc" $boot__CIAOC_OPTS -s -x -o "$mainexec" "$2"
    # Restore previous exec_header (if it existed)
    rm "$header" # Delete dummy header
    if [ -f "$header".tmp ]; then
	mv "$header".tmp "$header"
    fi
    #
    # NOTE: We assume that the builddir for 'ciaoc.sta' (which
    #   contains the engine) is the same than the builddir for this
    #   executable (we share the engine). Sometimes we may need a
    #   different engine.
    #
    boot_normal_message "reusing $eng_name.$boot__OS$boot__ARCH (engine for $mainname)"
    #
    boot_dmc_message "built [boot]"
}

# Do autobuild and execute the compiled 'mainmod'
autoboot_exec() { # builddir mainmod [ARGS]
    local builddir="$1"
    local mainmod="$2"
    local mainexec=`get_mainexec "$1" "$2"`
    shift
    shift
    autoboot_autobuild "$builddir" "$mainmod"
    builddir_exec "$builddir" "$mainexec" "$@"
}

