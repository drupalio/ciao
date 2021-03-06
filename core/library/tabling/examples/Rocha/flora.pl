%% Segfaulting query:
%% 
%% '_$_$_flora_isa_rhs'(X,direct), writeln(X), fail.


test(File) :- tell(File), test, told.
test :- '_$_$_flora_isa_rhs'(X,direct), writeln(X), fail; true.


/**** closure/flrheader.P: Prepended automatically by the FLORA compiler ****/


:- table '_$_$_flora_fd'/3.
:- table '_$_$_flora_mvd'/3.
:- table '_$_$_flora_ifd'/3.
:- table '_$_$_flora_imvd'/3.
:- table '_$_$_flora_isa'/2.
:- table '_$_$_flora_sub'/2.
:- table '_$_$_flora_fs'/3.
:- table '_$_$_flora_mvs'/3.
:- table '_$_$_flora_exists'/1.
:- table '_$_$_flora_mvd'/2.
:- table '_$_$_flora_imvd'/2.



/****************************************************************************/
%:- dynamic '_$_$_flora_fd_dyn'(_,_,_).
%:- dynamic '_$_$_flora_mvd_dyn'(_,_,_).
%:- dynamic '_$_$_flora_ifd_dyn'(_,_,_).
%:- dynamic '_$_$_flora_imvd_dyn'(_,_,_).
%:- dynamic '_$_$_flora_isa_dyn'(_,_).
%:- dynamic '_$_$_flora_sub_dyn'(_,_).
%:- dynamic '_$_$_flora_fs_dyn'(_,_,_).
%:- dynamic '_$_$_flora_mvs_dyn'(_,_,_).
%:- dynamic '_$_$_flora_exists_dyn'(_).
%:- dynamic '_$_$_flora_mvd_dyn'(_,_).
%:- dynamic '_$_$_flora_imvd_dyn'(_,_).

:- table '_$_$_flora_fd_dyn'/3.
:- table '_$_$_flora_mvd_dyn'/3.
:- table '_$_$_flora_ifd_dyn'/3.
:- table '_$_$_flora_imvd_dyn'/3.
:- table '_$_$_flora_isa_dyn'/2.
:- table '_$_$_flora_sub_dyn'/2.
:- table '_$_$_flora_fs_dyn'/3.
:- table '_$_$_flora_mvs_dyn'/3.
:- table '_$_$_flora_exists_dyn'/1.
:- table '_$_$_flora_mvd_dyn'/2.
:- table '_$_$_flora_imvd_dyn'/2.

'_$_$_flora_fd'(O,M,R)   :- '_$_$_flora_fd_dyn'(O,M,R).
'_$_$_flora_mvd'(O,M,R)  :- '_$_$_flora_mvd_dyn'(O,M,R).
'_$_$_flora_ifd'(O,M,R)  :- '_$_$_flora_ifd_dyn'(O,M,R).
'_$_$_flora_imvd'(O,M,R) :- '_$_$_flora_imvd_dyn'(O,M,R).
'_$_$_flora_isa'(O1,O2)  :- '_$_$_flora_isa_dyn'(O1,O2).
'_$_$_flora_sub'(O1,O2)  :- '_$_$_flora_sub_dyn'(O1,O2).
'_$_$_flora_fs'(O,M,R)   :- '_$_$_flora_fs_dyn'(O,M,R).
'_$_$_flora_mvs'(O,M,R)  :- '_$_$_flora_mvs_dyn'(O,M,R).
'_$_$_flora_exists'(O)   :- '_$_$_flora_exists_dyn'(O).
'_$_$_flora_mvd'(O,M)    :- '_$_$_flora_mvd_dyn'(O,M).
'_$_$_flora_imvd'(O,M)   :- '_$_$_flora_imvd_dyn'(O,M).


/****************************************************************************
'_$_$_flora_tag'(noquery).

?- '_$_$_flora_tag'(query), !,
   ( current_predicate('_$_$_flora_print_all'/2) ->
       true
     ;
       ( package_configuration(dir(flora),D) ->
	   true
	 ;
	   bootstrap_package(flora,flora),
	   package_configuration(dir(flora),D)
       ),
       slash(S),
       fmt_write_string(Lib,'%s%slib%sflrdisplay',f(D,S,S)),
       consult(Lib)
   ),
   !.


************************** End of Header ***********************************/

%%%  acton_town:station[x->60;y->110;l->>{piccadilly,district}].
'_$_$_flora_isa'(acton_town,station).

'_$_$_flora_fd'(acton_town,'_$_$_flora_@'(x),60).

'_$_$_flora_fd'(acton_town,'_$_$_flora_@'(y),110).

'_$_$_flora_mvd'(acton_town,'_$_$_flora_@'(l),piccadilly).

'_$_$_flora_mvd'(acton_town,'_$_$_flora_@'(l),district).


%%% aldgate:station[x->297;y->126;l->>{circle}].
'_$_$_flora_isa'(aldgate,station).

'_$_$_flora_fd'(aldgate,'_$_$_flora_@'(x),297).

'_$_$_flora_fd'(aldgate,'_$_$_flora_@'(y),126).

'_$_$_flora_mvd'(aldgate,'_$_$_flora_@'(l),circle).


%%% aldgate_east:station[x->318;y->126;l->>{district,metropolitan}].
'_$_$_flora_isa'(aldgate_east,station).

'_$_$_flora_fd'(aldgate_east,'_$_$_flora_@'(x),318).

'_$_$_flora_fd'(aldgate_east,'_$_$_flora_@'(y),126).

'_$_$_flora_mvd'(aldgate_east,'_$_$_flora_@'(l),district).

'_$_$_flora_mvd'(aldgate_east,'_$_$_flora_@'(l),metropolitan).


%%% aldwych:station[x->238;y->126;l->>{piccadilly_aldwych_branch}].
'_$_$_flora_isa'(aldwych,station).

'_$_$_flora_fd'(aldwych,'_$_$_flora_@'(x),238).

'_$_$_flora_fd'(aldwych,'_$_$_flora_@'(y),126).

'_$_$_flora_mvd'(aldwych,'_$_$_flora_@'(l),piccadilly_aldwych_branch).


%%% angel:station[x->261;y->164;l->>{northern_west}].
'_$_$_flora_isa'(angel,station).

'_$_$_flora_fd'(angel,'_$_$_flora_@'(x),261).

'_$_$_flora_fd'(angel,'_$_$_flora_@'(y),164).

'_$_$_flora_mvd'(angel,'_$_$_flora_@'(l),northern_west).


%%% baker_street:station[x->175;y->164;l->>{metropolitan,circle,bakerloo,jubilee, metropolitan_amersham_branch}].
'_$_$_flora_isa'(baker_street,station).

'_$_$_flora_fd'(baker_street,'_$_$_flora_@'(x),175).

'_$_$_flora_fd'(baker_street,'_$_$_flora_@'(y),164).

'_$_$_flora_mvd'(baker_street,'_$_$_flora_@'(l),metropolitan).

'_$_$_flora_mvd'(baker_street,'_$_$_flora_@'(l),circle).

'_$_$_flora_mvd'(baker_street,'_$_$_flora_@'(l),bakerloo).

'_$_$_flora_mvd'(baker_street,'_$_$_flora_@'(l),jubilee).

'_$_$_flora_mvd'(baker_street,'_$_$_flora_@'(l),metropolitan_amersham_branch).


%%% bank:station[x->274;y->140;l->>{central,northern_city, subway_between_bank_and_monument}].
'_$_$_flora_isa'(bank,station).

'_$_$_flora_fd'(bank,'_$_$_flora_@'(x),274).

'_$_$_flora_fd'(bank,'_$_$_flora_@'(y),140).

'_$_$_flora_mvd'(bank,'_$_$_flora_@'(l),central).

'_$_$_flora_mvd'(bank,'_$_$_flora_@'(l),northern_city).

'_$_$_flora_mvd'(bank,'_$_$_flora_@'(l),subway_between_bank_and_monument).


%%% barbican:station[x->261;y->158;l->>{circle,metropolitan}].
'_$_$_flora_isa'(barbican,station).

'_$_$_flora_fd'(barbican,'_$_$_flora_@'(x),261).

'_$_$_flora_fd'(barbican,'_$_$_flora_@'(y),158).

'_$_$_flora_mvd'(barbican,'_$_$_flora_@'(l),circle).

'_$_$_flora_mvd'(barbican,'_$_$_flora_@'(l),metropolitan).


%%% barons_court:station[x->113;y->100;l->>{district,piccadilly}].
'_$_$_flora_isa'(barons_court,station).

'_$_$_flora_fd'(barons_court,'_$_$_flora_@'(x),113).

'_$_$_flora_fd'(barons_court,'_$_$_flora_@'(y),100).

'_$_$_flora_mvd'(barons_court,'_$_$_flora_@'(l),district).

'_$_$_flora_mvd'(barons_court,'_$_$_flora_@'(l),piccadilly).


%%% bayswater:station[x->136;y->145;l->>{circle}].
'_$_$_flora_isa'(bayswater,station).

'_$_$_flora_fd'(bayswater,'_$_$_flora_@'(x),136).

'_$_$_flora_fd'(bayswater,'_$_$_flora_@'(y),145).

'_$_$_flora_mvd'(bayswater,'_$_$_flora_@'(l),circle).


%%% bethnal_green:station[x->316;y->140;l->>{central}].
'_$_$_flora_isa'(bethnal_green,station).

'_$_$_flora_fd'(bethnal_green,'_$_$_flora_@'(x),316).

'_$_$_flora_fd'(bethnal_green,'_$_$_flora_@'(y),140).

'_$_$_flora_mvd'(bethnal_green,'_$_$_flora_@'(l),central).


%%% blackfriars:station[x->252;y->112;l->>{circle,district}].
'_$_$_flora_isa'(blackfriars,station).

'_$_$_flora_fd'(blackfriars,'_$_$_flora_@'(x),252).

'_$_$_flora_fd'(blackfriars,'_$_$_flora_@'(y),112).

'_$_$_flora_mvd'(blackfriars,'_$_$_flora_@'(l),circle).

'_$_$_flora_mvd'(blackfriars,'_$_$_flora_@'(l),district).


%%% bond_street:station[x->176;y->140;l->>{central,jubilee}].
'_$_$_flora_isa'(bond_street,station).

'_$_$_flora_fd'(bond_street,'_$_$_flora_@'(x),176).

'_$_$_flora_fd'(bond_street,'_$_$_flora_@'(y),140).

'_$_$_flora_mvd'(bond_street,'_$_$_flora_@'(l),central).

'_$_$_flora_mvd'(bond_street,'_$_$_flora_@'(l),jubilee).


%%% borough:station[x->250;y->80;l->>{northern_west}].
'_$_$_flora_isa'(borough,station).

'_$_$_flora_fd'(borough,'_$_$_flora_@'(x),250).

'_$_$_flora_fd'(borough,'_$_$_flora_@'(y),80).

'_$_$_flora_mvd'(borough,'_$_$_flora_@'(l),northern_west).


%%%  camden_town:station[x->220;y->188;l->>{northern_city,northern_west}].
'_$_$_flora_isa'(camden_town,station).

'_$_$_flora_fd'(camden_town,'_$_$_flora_@'(x),220).

'_$_$_flora_fd'(camden_town,'_$_$_flora_@'(y),188).

'_$_$_flora_mvd'(camden_town,'_$_$_flora_@'(l),northern_city).

'_$_$_flora_mvd'(camden_town,'_$_$_flora_@'(l),northern_west).


%%% cannon_street:station[x->266;y->112;l->>{circle,district}].
'_$_$_flora_isa'(cannon_street,station).

'_$_$_flora_fd'(cannon_street,'_$_$_flora_@'(x),266).

'_$_$_flora_fd'(cannon_street,'_$_$_flora_@'(y),112).

'_$_$_flora_mvd'(cannon_street,'_$_$_flora_@'(l),circle).

'_$_$_flora_mvd'(cannon_street,'_$_$_flora_@'(l),district).


%%% chancery_lane:station[x->244;y->140;l->>{central}].
'_$_$_flora_isa'(chancery_lane,station).

'_$_$_flora_fd'(chancery_lane,'_$_$_flora_@'(x),244).

'_$_$_flora_fd'(chancery_lane,'_$_$_flora_@'(y),140).

'_$_$_flora_mvd'(chancery_lane,'_$_$_flora_@'(l),central).


%%% charing_cross:station[x->220;y->112;l->>{bakerloo,jubilee,northern_city}].
'_$_$_flora_isa'(charing_cross,station).

'_$_$_flora_fd'(charing_cross,'_$_$_flora_@'(x),220).

'_$_$_flora_fd'(charing_cross,'_$_$_flora_@'(y),112).

'_$_$_flora_mvd'(charing_cross,'_$_$_flora_@'(l),bakerloo).

'_$_$_flora_mvd'(charing_cross,'_$_$_flora_@'(l),jubilee).

'_$_$_flora_mvd'(charing_cross,'_$_$_flora_@'(l),northern_city).


%%% chiswick_park:station[x->60;y->102;l->>{district}].
'_$_$_flora_isa'(chiswick_park,station).

'_$_$_flora_fd'(chiswick_park,'_$_$_flora_@'(x),60).

'_$_$_flora_fd'(chiswick_park,'_$_$_flora_@'(y),102).

'_$_$_flora_mvd'(chiswick_park,'_$_$_flora_@'(l),district).


%%% covent_garden:station[x->230;y->132;l->>{piccadilly}].
'_$_$_flora_isa'(covent_garden,station).

'_$_$_flora_fd'(covent_garden,'_$_$_flora_@'(x),230).

'_$_$_flora_fd'(covent_garden,'_$_$_flora_@'(y),132).

'_$_$_flora_mvd'(covent_garden,'_$_$_flora_@'(l),piccadilly).


%%%  ealing_broadway:station[x->40;y->140;l->>{central,district}].
'_$_$_flora_isa'(ealing_broadway,station).

'_$_$_flora_fd'(ealing_broadway,'_$_$_flora_@'(x),40).

'_$_$_flora_fd'(ealing_broadway,'_$_$_flora_@'(y),140).

'_$_$_flora_mvd'(ealing_broadway,'_$_$_flora_@'(l),central).

'_$_$_flora_mvd'(ealing_broadway,'_$_$_flora_@'(l),district).


%%% ealing_common:station[x->60;y->125;l->>{piccadilly,district}].
'_$_$_flora_isa'(ealing_common,station).

'_$_$_flora_fd'(ealing_common,'_$_$_flora_@'(x),60).

'_$_$_flora_fd'(ealing_common,'_$_$_flora_@'(y),125).

'_$_$_flora_mvd'(ealing_common,'_$_$_flora_@'(l),piccadilly).

'_$_$_flora_mvd'(ealing_common,'_$_$_flora_@'(l),district).


%%% earls_court:station[x->130;y->100;l->>{district, district_exhibition_branch, piccadilly}].
'_$_$_flora_isa'(earls_court,station).

'_$_$_flora_fd'(earls_court,'_$_$_flora_@'(x),130).

'_$_$_flora_fd'(earls_court,'_$_$_flora_@'(y),100).

'_$_$_flora_mvd'(earls_court,'_$_$_flora_@'(l),district).

'_$_$_flora_mvd'(earls_court,'_$_$_flora_@'(l),district_exhibition_branch).

'_$_$_flora_mvd'(earls_court,'_$_$_flora_@'(l),piccadilly).


%%% east_acton:station[x->90;y->140;l->>{central}].
'_$_$_flora_isa'(east_acton,station).

'_$_$_flora_fd'(east_acton,'_$_$_flora_@'(x),90).

'_$_$_flora_fd'(east_acton,'_$_$_flora_@'(y),140).

'_$_$_flora_mvd'(east_acton,'_$_$_flora_@'(l),central).


%%% edgware_road_bakerloo:station[x->147;y->163;l->>{bakerloo}].
'_$_$_flora_isa'(edgware_road_bakerloo,station).

'_$_$_flora_fd'(edgware_road_bakerloo,'_$_$_flora_@'(x),147).

'_$_$_flora_fd'(edgware_road_bakerloo,'_$_$_flora_@'(y),163).

'_$_$_flora_mvd'(edgware_road_bakerloo,'_$_$_flora_@'(l),bakerloo).


%%% edgware_road_circle:station[x->156;y->164;l->>{circle,metropolitan}].
'_$_$_flora_isa'(edgware_road_circle,station).

'_$_$_flora_fd'(edgware_road_circle,'_$_$_flora_@'(x),156).

'_$_$_flora_fd'(edgware_road_circle,'_$_$_flora_@'(y),164).

'_$_$_flora_mvd'(edgware_road_circle,'_$_$_flora_@'(l),circle).

'_$_$_flora_mvd'(edgware_road_circle,'_$_$_flora_@'(l),metropolitan).


%%% elephant_and_castle:station[x->235;y->65;l->>{bakerloo,northern_west}].
'_$_$_flora_isa'(elephant_and_castle,station).

'_$_$_flora_fd'(elephant_and_castle,'_$_$_flora_@'(x),235).

'_$_$_flora_fd'(elephant_and_castle,'_$_$_flora_@'(y),65).

'_$_$_flora_mvd'(elephant_and_castle,'_$_$_flora_@'(l),bakerloo).

'_$_$_flora_mvd'(elephant_and_castle,'_$_$_flora_@'(l),northern_west).


%%% embankment:station[x->220;y->100;l->>{bakerloo,circle,district,northern_city}].
'_$_$_flora_isa'(embankment,station).

'_$_$_flora_fd'(embankment,'_$_$_flora_@'(x),220).

'_$_$_flora_fd'(embankment,'_$_$_flora_@'(y),100).

'_$_$_flora_mvd'(embankment,'_$_$_flora_@'(l),bakerloo).

'_$_$_flora_mvd'(embankment,'_$_$_flora_@'(l),circle).

'_$_$_flora_mvd'(embankment,'_$_$_flora_@'(l),district).

'_$_$_flora_mvd'(embankment,'_$_$_flora_@'(l),northern_city).


%%% euston:station[x->220;y->170;l->>{northern_city,northern_west,victoria}].
'_$_$_flora_isa'(euston,station).

'_$_$_flora_fd'(euston,'_$_$_flora_@'(x),220).

'_$_$_flora_fd'(euston,'_$_$_flora_@'(y),170).

'_$_$_flora_mvd'(euston,'_$_$_flora_@'(l),northern_city).

'_$_$_flora_mvd'(euston,'_$_$_flora_@'(l),northern_west).

'_$_$_flora_mvd'(euston,'_$_$_flora_@'(l),victoria).


%%% euston_square:station[x->224;y->164;l->>{circle,metropolitan}].
'_$_$_flora_isa'(euston_square,station).

'_$_$_flora_fd'(euston_square,'_$_$_flora_@'(x),224).

'_$_$_flora_fd'(euston_square,'_$_$_flora_@'(y),164).

'_$_$_flora_mvd'(euston_square,'_$_$_flora_@'(l),circle).

'_$_$_flora_mvd'(euston_square,'_$_$_flora_@'(l),metropolitan).


%%%  farringdon:station[x->252;y->158;l->>{circle,metropolitan}].
'_$_$_flora_isa'(farringdon,station).

'_$_$_flora_fd'(farringdon,'_$_$_flora_@'(x),252).

'_$_$_flora_fd'(farringdon,'_$_$_flora_@'(y),158).

'_$_$_flora_mvd'(farringdon,'_$_$_flora_@'(l),circle).

'_$_$_flora_mvd'(farringdon,'_$_$_flora_@'(l),metropolitan).


%%% finchley_road:station[x->160;y->184;l->>{jubilee, metropolitan_amersham_branch}].
'_$_$_flora_isa'(finchley_road,station).

'_$_$_flora_fd'(finchley_road,'_$_$_flora_@'(x),160).

'_$_$_flora_fd'(finchley_road,'_$_$_flora_@'(y),184).

'_$_$_flora_mvd'(finchley_road,'_$_$_flora_@'(l),jubilee).

'_$_$_flora_mvd'(finchley_road,'_$_$_flora_@'(l),metropolitan_amersham_branch).


%%% finsbury_park:station[x->280;y->200;l->>{piccadilly,victoria}].
'_$_$_flora_isa'(finsbury_park,station).

'_$_$_flora_fd'(finsbury_park,'_$_$_flora_@'(x),280).

'_$_$_flora_fd'(finsbury_park,'_$_$_flora_@'(y),200).

'_$_$_flora_mvd'(finsbury_park,'_$_$_flora_@'(l),piccadilly).

'_$_$_flora_mvd'(finsbury_park,'_$_$_flora_@'(l),victoria).


%%% gloucester_road:station[x->145;y->100;l->>{circle,district}].
'_$_$_flora_isa'(gloucester_road,station).

'_$_$_flora_fd'(gloucester_road,'_$_$_flora_@'(x),145).

'_$_$_flora_fd'(gloucester_road,'_$_$_flora_@'(y),100).

'_$_$_flora_mvd'(gloucester_road,'_$_$_flora_@'(l),circle).

'_$_$_flora_mvd'(gloucester_road,'_$_$_flora_@'(l),district).


%%% goldhawk_road:station[x->106;y->124;l->>{metropolitan}].
'_$_$_flora_isa'(goldhawk_road,station).

'_$_$_flora_fd'(goldhawk_road,'_$_$_flora_@'(x),106).

'_$_$_flora_fd'(goldhawk_road,'_$_$_flora_@'(y),124).

'_$_$_flora_mvd'(goldhawk_road,'_$_$_flora_@'(l),metropolitan).


%%% goodge_street:station[x->220;y->150;l->>{northern_city}].
'_$_$_flora_isa'(goodge_street,station).

'_$_$_flora_fd'(goodge_street,'_$_$_flora_@'(x),220).

'_$_$_flora_fd'(goodge_street,'_$_$_flora_@'(y),150).

'_$_$_flora_mvd'(goodge_street,'_$_$_flora_@'(l),northern_city).


%%% great_portland_street:station[x->197;y->164;l->>{circle,metropolitan}].
'_$_$_flora_isa'(great_portland_street,station).

'_$_$_flora_fd'(great_portland_street,'_$_$_flora_@'(x),197).

'_$_$_flora_fd'(great_portland_street,'_$_$_flora_@'(y),164).

'_$_$_flora_mvd'(great_portland_street,'_$_$_flora_@'(l),circle).

'_$_$_flora_mvd'(great_portland_street,'_$_$_flora_@'(l),metropolitan).


%%% green_park:station[x->190;y->125;l->>{jubilee,piccadilly,victoria}].
'_$_$_flora_isa'(green_park,station).

'_$_$_flora_fd'(green_park,'_$_$_flora_@'(x),190).

'_$_$_flora_fd'(green_park,'_$_$_flora_@'(y),125).

'_$_$_flora_mvd'(green_park,'_$_$_flora_@'(l),jubilee).

'_$_$_flora_mvd'(green_park,'_$_$_flora_@'(l),piccadilly).

'_$_$_flora_mvd'(green_park,'_$_$_flora_@'(l),victoria).


%%% hammersmith:station[x->104;y->100;l->>{district,metropolitan,piccadilly}].
'_$_$_flora_isa'(hammersmith,station).

'_$_$_flora_fd'(hammersmith,'_$_$_flora_@'(x),104).

'_$_$_flora_fd'(hammersmith,'_$_$_flora_@'(y),100).

'_$_$_flora_mvd'(hammersmith,'_$_$_flora_@'(l),district).

'_$_$_flora_mvd'(hammersmith,'_$_$_flora_@'(l),metropolitan).

'_$_$_flora_mvd'(hammersmith,'_$_$_flora_@'(l),piccadilly).


%%% heathrow_terminal_4:station[x->10;y->68;l->>{piccadilly}].
'_$_$_flora_isa'(heathrow_terminal_4,station).

'_$_$_flora_fd'(heathrow_terminal_4,'_$_$_flora_@'(x),10).

'_$_$_flora_fd'(heathrow_terminal_4,'_$_$_flora_@'(y),68).

'_$_$_flora_mvd'(heathrow_terminal_4,'_$_$_flora_@'(l),piccadilly).


%%% heathrow_terminals_1_2_3:station[x->10;y->76;l->>{piccadilly}].
'_$_$_flora_isa'(heathrow_terminals_1_2_3,station).

'_$_$_flora_fd'(heathrow_terminals_1_2_3,'_$_$_flora_@'(x),10).

'_$_$_flora_fd'(heathrow_terminals_1_2_3,'_$_$_flora_@'(y),76).

'_$_$_flora_mvd'(heathrow_terminals_1_2_3,'_$_$_flora_@'(l),piccadilly).


%%% high_street_kensington:station[x->136;y->124;l->>{circle}].
'_$_$_flora_isa'(high_street_kensington,station).

'_$_$_flora_fd'(high_street_kensington,'_$_$_flora_@'(x),136).

'_$_$_flora_fd'(high_street_kensington,'_$_$_flora_@'(y),124).

'_$_$_flora_mvd'(high_street_kensington,'_$_$_flora_@'(l),circle).


%%% highbury_and_islington:station[x->272;y->175;l->>{victoria}].
'_$_$_flora_isa'(highbury_and_islington,station).

'_$_$_flora_fd'(highbury_and_islington,'_$_$_flora_@'(x),272).

'_$_$_flora_fd'(highbury_and_islington,'_$_$_flora_@'(y),175).

'_$_$_flora_mvd'(highbury_and_islington,'_$_$_flora_@'(l),victoria).


%%% holborn:station[x->238;y->140;l->>{central,piccadilly, piccadilly_aldwych_branch}].
'_$_$_flora_isa'(holborn,station).

'_$_$_flora_fd'(holborn,'_$_$_flora_@'(x),238).

'_$_$_flora_fd'(holborn,'_$_$_flora_@'(y),140).

'_$_$_flora_mvd'(holborn,'_$_$_flora_@'(l),central).

'_$_$_flora_mvd'(holborn,'_$_$_flora_@'(l),piccadilly).

'_$_$_flora_mvd'(holborn,'_$_$_flora_@'(l),piccadilly_aldwych_branch).


%%% holland_park:station[x->126;y->140;l->>{central}].
'_$_$_flora_isa'(holland_park,station).

'_$_$_flora_fd'(holland_park,'_$_$_flora_@'(x),126).

'_$_$_flora_fd'(holland_park,'_$_$_flora_@'(y),140).

'_$_$_flora_mvd'(holland_park,'_$_$_flora_@'(l),central).


%%% hyde_park_corner:station[x->172;y->119;l->>{piccadilly}].
'_$_$_flora_isa'(hyde_park_corner,station).

'_$_$_flora_fd'(hyde_park_corner,'_$_$_flora_@'(x),172).

'_$_$_flora_fd'(hyde_park_corner,'_$_$_flora_@'(y),119).

'_$_$_flora_mvd'(hyde_park_corner,'_$_$_flora_@'(l),piccadilly).


%%% kennington:station[x->220;y->50;l->>{northern_city,northern_west}].
'_$_$_flora_isa'(kennington,station).

'_$_$_flora_fd'(kennington,'_$_$_flora_@'(x),220).

'_$_$_flora_fd'(kennington,'_$_$_flora_@'(y),50).

'_$_$_flora_mvd'(kennington,'_$_$_flora_@'(l),northern_city).

'_$_$_flora_mvd'(kennington,'_$_$_flora_@'(l),northern_west).


%%% kensington_olympia:station[x->124;y->112;l->>{district_exhibition_branch}].
'_$_$_flora_isa'(kensington_olympia,station).

'_$_$_flora_fd'(kensington_olympia,'_$_$_flora_@'(x),124).

'_$_$_flora_fd'(kensington_olympia,'_$_$_flora_@'(y),112).

'_$_$_flora_mvd'(kensington_olympia,'_$_$_flora_@'(l),district_exhibition_branch).


%%% kings_cross:station[x->240;y->164;l->>{piccadilly,metropolitan,circle, northern_city,victoria}].
'_$_$_flora_isa'(kings_cross,station).

'_$_$_flora_fd'(kings_cross,'_$_$_flora_@'(x),240).

'_$_$_flora_fd'(kings_cross,'_$_$_flora_@'(y),164).

'_$_$_flora_mvd'(kings_cross,'_$_$_flora_@'(l),piccadilly).

'_$_$_flora_mvd'(kings_cross,'_$_$_flora_@'(l),metropolitan).

'_$_$_flora_mvd'(kings_cross,'_$_$_flora_@'(l),circle).

'_$_$_flora_mvd'(kings_cross,'_$_$_flora_@'(l),northern_city).

'_$_$_flora_mvd'(kings_cross,'_$_$_flora_@'(l),victoria).


%%%  knightsbridge:station[x->165;y->110;l->>{piccadilly}].
'_$_$_flora_isa'(knightsbridge,station).

'_$_$_flora_fd'(knightsbridge,'_$_$_flora_@'(x),165).

'_$_$_flora_fd'(knightsbridge,'_$_$_flora_@'(y),110).

'_$_$_flora_mvd'(knightsbridge,'_$_$_flora_@'(l),piccadilly).


%%% ladbroke_grove:station[x->114;y->150;l->>{metropolitan}].
'_$_$_flora_isa'(ladbroke_grove,station).

'_$_$_flora_fd'(ladbroke_grove,'_$_$_flora_@'(x),114).

'_$_$_flora_fd'(ladbroke_grove,'_$_$_flora_@'(y),150).

'_$_$_flora_mvd'(ladbroke_grove,'_$_$_flora_@'(l),metropolitan).


%%% lambeth_north:station[x->228;y->72;l->>{bakerloo}].
'_$_$_flora_isa'(lambeth_north,station).

'_$_$_flora_fd'(lambeth_north,'_$_$_flora_@'(x),228).

'_$_$_flora_fd'(lambeth_north,'_$_$_flora_@'(y),72).

'_$_$_flora_mvd'(lambeth_north,'_$_$_flora_@'(l),bakerloo).


%%% lancaster_gate:station[x->158;y->140;l->>{central}].
'_$_$_flora_isa'(lancaster_gate,station).

'_$_$_flora_fd'(lancaster_gate,'_$_$_flora_@'(x),158).

'_$_$_flora_fd'(lancaster_gate,'_$_$_flora_@'(y),140).

'_$_$_flora_mvd'(lancaster_gate,'_$_$_flora_@'(l),central).


%%% latimer_road:station[x->110;y->142;l->>{metropolitan}].
'_$_$_flora_isa'(latimer_road,station).

'_$_$_flora_fd'(latimer_road,'_$_$_flora_@'(x),110).

'_$_$_flora_fd'(latimer_road,'_$_$_flora_@'(y),142).

'_$_$_flora_mvd'(latimer_road,'_$_$_flora_@'(l),metropolitan).


%%% leicester_square:station[x->220;y->125;l->>{northern_city,piccadilly}].
'_$_$_flora_isa'(leicester_square,station).

'_$_$_flora_fd'(leicester_square,'_$_$_flora_@'(x),220).

'_$_$_flora_fd'(leicester_square,'_$_$_flora_@'(y),125).

'_$_$_flora_mvd'(leicester_square,'_$_$_flora_@'(l),northern_city).

'_$_$_flora_mvd'(leicester_square,'_$_$_flora_@'(l),piccadilly).


%%% liverpool_street:station[x->296;y->140;l->>{central,circle,metropolitan}].
'_$_$_flora_isa'(liverpool_street,station).

'_$_$_flora_fd'(liverpool_street,'_$_$_flora_@'(x),296).

'_$_$_flora_fd'(liverpool_street,'_$_$_flora_@'(y),140).

'_$_$_flora_mvd'(liverpool_street,'_$_$_flora_@'(l),central).

'_$_$_flora_mvd'(liverpool_street,'_$_$_flora_@'(l),circle).

'_$_$_flora_mvd'(liverpool_street,'_$_$_flora_@'(l),metropolitan).


%%% london_bridge:station[x->261;y->90;l->>{northern_west}].
'_$_$_flora_isa'(london_bridge,station).

'_$_$_flora_fd'(london_bridge,'_$_$_flora_@'(x),261).

'_$_$_flora_fd'(london_bridge,'_$_$_flora_@'(y),90).

'_$_$_flora_mvd'(london_bridge,'_$_$_flora_@'(l),northern_west).


%%% mansion_house:station[x->260;y->112;l->>{circle,district}].
'_$_$_flora_isa'(mansion_house,station).

'_$_$_flora_fd'(mansion_house,'_$_$_flora_@'(x),260).

'_$_$_flora_fd'(mansion_house,'_$_$_flora_@'(y),112).

'_$_$_flora_mvd'(mansion_house,'_$_$_flora_@'(l),circle).

'_$_$_flora_mvd'(mansion_house,'_$_$_flora_@'(l),district).


%%% marble_arch:station[x->165;y->140;l->>{central}].
'_$_$_flora_isa'(marble_arch,station).

'_$_$_flora_fd'(marble_arch,'_$_$_flora_@'(x),165).

'_$_$_flora_fd'(marble_arch,'_$_$_flora_@'(y),140).

'_$_$_flora_mvd'(marble_arch,'_$_$_flora_@'(l),central).


%%% marylebone:station[x->163;y->166;l->>{bakerloo}].
'_$_$_flora_isa'(marylebone,station).

'_$_$_flora_fd'(marylebone,'_$_$_flora_@'(x),163).

'_$_$_flora_fd'(marylebone,'_$_$_flora_@'(y),166).

'_$_$_flora_mvd'(marylebone,'_$_$_flora_@'(l),bakerloo).


%%% mile_end:station[x->336;y->140;l->>{central,district}].
'_$_$_flora_isa'(mile_end,station).

'_$_$_flora_fd'(mile_end,'_$_$_flora_@'(x),336).

'_$_$_flora_fd'(mile_end,'_$_$_flora_@'(y),140).

'_$_$_flora_mvd'(mile_end,'_$_$_flora_@'(l),central).

'_$_$_flora_mvd'(mile_end,'_$_$_flora_@'(l),district).


%%% monument:station[x->268;y->112;l->>{circle,district, subway_between_bank_and_monument}].
'_$_$_flora_isa'(monument,station).

'_$_$_flora_fd'(monument,'_$_$_flora_@'(x),268).

'_$_$_flora_fd'(monument,'_$_$_flora_@'(y),112).

'_$_$_flora_mvd'(monument,'_$_$_flora_@'(l),circle).

'_$_$_flora_mvd'(monument,'_$_$_flora_@'(l),district).

'_$_$_flora_mvd'(monument,'_$_$_flora_@'(l),subway_between_bank_and_monument).


%%% moorgate:station[x->274;y->158;l->>{circle,metropolitan,northern_west}].
'_$_$_flora_isa'(moorgate,station).

'_$_$_flora_fd'(moorgate,'_$_$_flora_@'(x),274).

'_$_$_flora_fd'(moorgate,'_$_$_flora_@'(y),158).

'_$_$_flora_mvd'(moorgate,'_$_$_flora_@'(l),circle).

'_$_$_flora_mvd'(moorgate,'_$_$_flora_@'(l),metropolitan).

'_$_$_flora_mvd'(moorgate,'_$_$_flora_@'(l),northern_west).


%%% mornington_crescent:station[x->220;y->180;l->>{northern_city}].
'_$_$_flora_isa'(mornington_crescent,station).

'_$_$_flora_fd'(mornington_crescent,'_$_$_flora_@'(x),220).

'_$_$_flora_fd'(mornington_crescent,'_$_$_flora_@'(y),180).

'_$_$_flora_mvd'(mornington_crescent,'_$_$_flora_@'(l),northern_city).


%%% neasden:station[x->134;y->218;l->>{jubilee}].
'_$_$_flora_isa'(neasden,station).

'_$_$_flora_fd'(neasden,'_$_$_flora_@'(x),134).

'_$_$_flora_fd'(neasden,'_$_$_flora_@'(y),218).

'_$_$_flora_mvd'(neasden,'_$_$_flora_@'(l),jubilee).


%%% north_acton:station[x->80;y->140;l->>{central}].
'_$_$_flora_isa'(north_acton,station).

'_$_$_flora_fd'(north_acton,'_$_$_flora_@'(x),80).

'_$_$_flora_fd'(north_acton,'_$_$_flora_@'(y),140).

'_$_$_flora_mvd'(north_acton,'_$_$_flora_@'(l),central).


%%% notting_hill_gate:station[x->136;y->140;l->>{central,circle}].
'_$_$_flora_isa'(notting_hill_gate,station).

'_$_$_flora_fd'(notting_hill_gate,'_$_$_flora_@'(x),136).

'_$_$_flora_fd'(notting_hill_gate,'_$_$_flora_@'(y),140).

'_$_$_flora_mvd'(notting_hill_gate,'_$_$_flora_@'(l),central).

'_$_$_flora_mvd'(notting_hill_gate,'_$_$_flora_@'(l),circle).


%%% old_street:station[x->272;y->165;l->>{northern_west}].
'_$_$_flora_isa'(old_street,station).

'_$_$_flora_fd'(old_street,'_$_$_flora_@'(x),272).

'_$_$_flora_fd'(old_street,'_$_$_flora_@'(y),165).

'_$_$_flora_mvd'(old_street,'_$_$_flora_@'(l),northern_west).


%%% oval:station[x->215;y->42;l->>{northern_city}].
'_$_$_flora_isa'(oval,station).

'_$_$_flora_fd'(oval,'_$_$_flora_@'(x),215).

'_$_$_flora_fd'(oval,'_$_$_flora_@'(y),42).

'_$_$_flora_mvd'(oval,'_$_$_flora_@'(l),northern_city).


%%% oxford_circus:station[x->195;y->140;l->>{bakerloo,central,victoria}].
'_$_$_flora_isa'(oxford_circus,station).

'_$_$_flora_fd'(oxford_circus,'_$_$_flora_@'(x),195).

'_$_$_flora_fd'(oxford_circus,'_$_$_flora_@'(y),140).

'_$_$_flora_mvd'(oxford_circus,'_$_$_flora_@'(l),bakerloo).

'_$_$_flora_mvd'(oxford_circus,'_$_$_flora_@'(l),central).

'_$_$_flora_mvd'(oxford_circus,'_$_$_flora_@'(l),victoria).


%%% paddington:station[x->140;y->164;l->>{bakerloo,circle,metropolitan}].
'_$_$_flora_isa'(paddington,station).

'_$_$_flora_fd'(paddington,'_$_$_flora_@'(x),140).

'_$_$_flora_fd'(paddington,'_$_$_flora_@'(y),164).

'_$_$_flora_mvd'(paddington,'_$_$_flora_@'(l),bakerloo).

'_$_$_flora_mvd'(paddington,'_$_$_flora_@'(l),circle).

'_$_$_flora_mvd'(paddington,'_$_$_flora_@'(l),metropolitan).


%%% piccadilly_circus:station[x->210;y->125;l->>{bakerloo,piccadilly}].
'_$_$_flora_isa'(piccadilly_circus,station).

'_$_$_flora_fd'(piccadilly_circus,'_$_$_flora_@'(x),210).

'_$_$_flora_fd'(piccadilly_circus,'_$_$_flora_@'(y),125).

'_$_$_flora_mvd'(piccadilly_circus,'_$_$_flora_@'(l),bakerloo).

'_$_$_flora_mvd'(piccadilly_circus,'_$_$_flora_@'(l),piccadilly).


%%% pimlico:station[x->190;y->86;l->>{victoria}].
'_$_$_flora_isa'(pimlico,station).

'_$_$_flora_fd'(pimlico,'_$_$_flora_@'(x),190).

'_$_$_flora_fd'(pimlico,'_$_$_flora_@'(y),86).

'_$_$_flora_mvd'(pimlico,'_$_$_flora_@'(l),victoria).


%%% queens_park:station[x->120;y->184;l->>{bakerloo}].
'_$_$_flora_isa'(queens_park,station).

'_$_$_flora_fd'(queens_park,'_$_$_flora_@'(x),120).

'_$_$_flora_fd'(queens_park,'_$_$_flora_@'(y),184).

'_$_$_flora_mvd'(queens_park,'_$_$_flora_@'(l),bakerloo).


%%% queensway:station[x->148;y->140;l->>{central}].
'_$_$_flora_isa'(queensway,station).

'_$_$_flora_fd'(queensway,'_$_$_flora_@'(x),148).

'_$_$_flora_fd'(queensway,'_$_$_flora_@'(y),140).

'_$_$_flora_mvd'(queensway,'_$_$_flora_@'(l),central).


%%% ravenscourt_park:station[x->98;y->102;l->>{district}].
'_$_$_flora_isa'(ravenscourt_park,station).

'_$_$_flora_fd'(ravenscourt_park,'_$_$_flora_@'(x),98).

'_$_$_flora_fd'(ravenscourt_park,'_$_$_flora_@'(y),102).

'_$_$_flora_mvd'(ravenscourt_park,'_$_$_flora_@'(l),district).


%%% regents_park:station[x->193;y->160;l->>{bakerloo}].
'_$_$_flora_isa'(regents_park,station).

'_$_$_flora_fd'(regents_park,'_$_$_flora_@'(x),193).

'_$_$_flora_fd'(regents_park,'_$_$_flora_@'(y),160).

'_$_$_flora_mvd'(regents_park,'_$_$_flora_@'(l),bakerloo).


%%% royal_oak:station[x->121;y->160;l->>{metropolitan}].
'_$_$_flora_isa'(royal_oak,station).

'_$_$_flora_fd'(royal_oak,'_$_$_flora_@'(x),121).

'_$_$_flora_fd'(royal_oak,'_$_$_flora_@'(y),160).

'_$_$_flora_mvd'(royal_oak,'_$_$_flora_@'(l),metropolitan).


%%% russell_square:station[x->238;y->148;l->>{piccadilly}].
'_$_$_flora_isa'(russell_square,station).

'_$_$_flora_fd'(russell_square,'_$_$_flora_@'(x),238).

'_$_$_flora_fd'(russell_square,'_$_$_flora_@'(y),148).

'_$_$_flora_mvd'(russell_square,'_$_$_flora_@'(l),piccadilly).


%%% shepherds_bush_central:station[x->115;y->140;l->>{central}].
'_$_$_flora_isa'(shepherds_bush_central,station).

'_$_$_flora_fd'(shepherds_bush_central,'_$_$_flora_@'(x),115).

'_$_$_flora_fd'(shepherds_bush_central,'_$_$_flora_@'(y),140).

'_$_$_flora_mvd'(shepherds_bush_central,'_$_$_flora_@'(l),central).


%%% shepherds_bush_met:station[x->106;y->135;l->>{metropolitan}].
'_$_$_flora_isa'(shepherds_bush_met,station).

'_$_$_flora_fd'(shepherds_bush_met,'_$_$_flora_@'(x),106).

'_$_$_flora_fd'(shepherds_bush_met,'_$_$_flora_@'(y),135).

'_$_$_flora_mvd'(shepherds_bush_met,'_$_$_flora_@'(l),metropolitan).


%%% sloane_square:station[x->153;y->100;l->>{circle,district}].
'_$_$_flora_isa'(sloane_square,station).

'_$_$_flora_fd'(sloane_square,'_$_$_flora_@'(x),153).

'_$_$_flora_fd'(sloane_square,'_$_$_flora_@'(y),100).

'_$_$_flora_mvd'(sloane_square,'_$_$_flora_@'(l),circle).

'_$_$_flora_mvd'(sloane_square,'_$_$_flora_@'(l),district).


%%% south_kensington:station[x->156;y->100;l->>{circle,district,piccadilly}].
'_$_$_flora_isa'(south_kensington,station).

'_$_$_flora_fd'(south_kensington,'_$_$_flora_@'(x),156).

'_$_$_flora_fd'(south_kensington,'_$_$_flora_@'(y),100).

'_$_$_flora_mvd'(south_kensington,'_$_$_flora_@'(l),circle).

'_$_$_flora_mvd'(south_kensington,'_$_$_flora_@'(l),district).

'_$_$_flora_mvd'(south_kensington,'_$_$_flora_@'(l),piccadilly).


%%% st_james_park:station[x->200;y->100;l->>{circle,district}].
'_$_$_flora_isa'(st_james_park,station).

'_$_$_flora_fd'(st_james_park,'_$_$_flora_@'(x),200).

'_$_$_flora_fd'(st_james_park,'_$_$_flora_@'(y),100).

'_$_$_flora_mvd'(st_james_park,'_$_$_flora_@'(l),circle).

'_$_$_flora_mvd'(st_james_park,'_$_$_flora_@'(l),district).


%%% st_pauls:station[x->261;y->140;l->>{central}].
'_$_$_flora_isa'(st_pauls,station).

'_$_$_flora_fd'(st_pauls,'_$_$_flora_@'(x),261).

'_$_$_flora_fd'(st_pauls,'_$_$_flora_@'(y),140).

'_$_$_flora_mvd'(st_pauls,'_$_$_flora_@'(l),central).


%%% stamford_brook:station[x->83;y->102;l->>{district}].
'_$_$_flora_isa'(stamford_brook,station).

'_$_$_flora_fd'(stamford_brook,'_$_$_flora_@'(x),83).

'_$_$_flora_fd'(stamford_brook,'_$_$_flora_@'(y),102).

'_$_$_flora_mvd'(stamford_brook,'_$_$_flora_@'(l),district).


%%% stockwell:station[x->210;y->40;l->>{northern_city,victoria}].
'_$_$_flora_isa'(stockwell,station).

'_$_$_flora_fd'(stockwell,'_$_$_flora_@'(x),210).

'_$_$_flora_fd'(stockwell,'_$_$_flora_@'(y),40).

'_$_$_flora_mvd'(stockwell,'_$_$_flora_@'(l),northern_city).

'_$_$_flora_mvd'(stockwell,'_$_$_flora_@'(l),victoria).


%%% stratford:station[x->330;y->164;l->>{central}].
'_$_$_flora_isa'(stratford,station).

'_$_$_flora_fd'(stratford,'_$_$_flora_@'(x),330).

'_$_$_flora_fd'(stratford,'_$_$_flora_@'(y),164).

'_$_$_flora_mvd'(stratford,'_$_$_flora_@'(l),central).


%%% temple:station[x->241;y->104;l->>{circle,district}].
'_$_$_flora_isa'(temple,station).

'_$_$_flora_fd'(temple,'_$_$_flora_@'(x),241).

'_$_$_flora_fd'(temple,'_$_$_flora_@'(y),104).

'_$_$_flora_mvd'(temple,'_$_$_flora_@'(l),circle).

'_$_$_flora_mvd'(temple,'_$_$_flora_@'(l),district).


%%% tottenham_court_road:station[x->220;y->140;l->>{central,northern_city}].
'_$_$_flora_isa'(tottenham_court_road,station).

'_$_$_flora_fd'(tottenham_court_road,'_$_$_flora_@'(x),220).

'_$_$_flora_fd'(tottenham_court_road,'_$_$_flora_@'(y),140).

'_$_$_flora_mvd'(tottenham_court_road,'_$_$_flora_@'(l),central).

'_$_$_flora_mvd'(tottenham_court_road,'_$_$_flora_@'(l),northern_city).


%%% tower_hill:station[x->288;y->112;l->>{circle,district}].
'_$_$_flora_isa'(tower_hill,station).

'_$_$_flora_fd'(tower_hill,'_$_$_flora_@'(x),288).

'_$_$_flora_fd'(tower_hill,'_$_$_flora_@'(y),112).

'_$_$_flora_mvd'(tower_hill,'_$_$_flora_@'(l),circle).

'_$_$_flora_mvd'(tower_hill,'_$_$_flora_@'(l),district).


%%% turnham_green:station[x->70;y->100;l->>{piccadilly,district}].
'_$_$_flora_isa'(turnham_green,station).

'_$_$_flora_fd'(turnham_green,'_$_$_flora_@'(x),70).

'_$_$_flora_fd'(turnham_green,'_$_$_flora_@'(y),100).

'_$_$_flora_mvd'(turnham_green,'_$_$_flora_@'(l),piccadilly).

'_$_$_flora_mvd'(turnham_green,'_$_$_flora_@'(l),district).


%%% vauxhall:station[x->190;y->70;l->>{victoria}].
'_$_$_flora_isa'(vauxhall,station).

'_$_$_flora_fd'(vauxhall,'_$_$_flora_@'(x),190).

'_$_$_flora_fd'(vauxhall,'_$_$_flora_@'(y),70).

'_$_$_flora_mvd'(vauxhall,'_$_$_flora_@'(l),victoria).


%%% victoria:station[x->190;y->100;l->>{circle,district,victoria}].
'_$_$_flora_isa'(victoria,station).

'_$_$_flora_fd'(victoria,'_$_$_flora_@'(x),190).

'_$_$_flora_fd'(victoria,'_$_$_flora_@'(y),100).

'_$_$_flora_mvd'(victoria,'_$_$_flora_@'(l),circle).

'_$_$_flora_mvd'(victoria,'_$_$_flora_@'(l),district).

'_$_$_flora_mvd'(victoria,'_$_$_flora_@'(l),victoria).


%%% warren_street:station[x->220;y->160;l->>{northern_city,victoria}].
'_$_$_flora_isa'(warren_street,station).

'_$_$_flora_fd'(warren_street,'_$_$_flora_@'(x),220).

'_$_$_flora_fd'(warren_street,'_$_$_flora_@'(y),160).

'_$_$_flora_mvd'(warren_street,'_$_$_flora_@'(l),northern_city).

'_$_$_flora_mvd'(warren_street,'_$_$_flora_@'(l),victoria).


%%% waterloo:station[x->220;y->83;l->>{bakerloo,northern_city,waterloo_and_city}].
'_$_$_flora_isa'(waterloo,station).

'_$_$_flora_fd'(waterloo,'_$_$_flora_@'(x),220).

'_$_$_flora_fd'(waterloo,'_$_$_flora_@'(y),83).

'_$_$_flora_mvd'(waterloo,'_$_$_flora_@'(l),bakerloo).

'_$_$_flora_mvd'(waterloo,'_$_$_flora_@'(l),northern_city).

'_$_$_flora_mvd'(waterloo,'_$_$_flora_@'(l),waterloo_and_city).


%%% west_acton:station[x->70;y->140;l->>{central}].
'_$_$_flora_isa'(west_acton,station).

'_$_$_flora_fd'(west_acton,'_$_$_flora_@'(x),70).

'_$_$_flora_fd'(west_acton,'_$_$_flora_@'(y),140).

'_$_$_flora_mvd'(west_acton,'_$_$_flora_@'(l),central).


%%% west_kensington:station[x->120;y->100;l->>{district}].
'_$_$_flora_isa'(west_kensington,station).

'_$_$_flora_fd'(west_kensington,'_$_$_flora_@'(x),120).

'_$_$_flora_fd'(west_kensington,'_$_$_flora_@'(y),100).

'_$_$_flora_mvd'(west_kensington,'_$_$_flora_@'(l),district).


%%% westbourne_park:station[x->118;y->155;l->>{metropolitan}].
'_$_$_flora_isa'(westbourne_park,station).

'_$_$_flora_fd'(westbourne_park,'_$_$_flora_@'(x),118).

'_$_$_flora_fd'(westbourne_park,'_$_$_flora_@'(y),155).

'_$_$_flora_mvd'(westbourne_park,'_$_$_flora_@'(l),metropolitan).


%%% westminster:station[x->212;y->100;l->>{circle,district}].
'_$_$_flora_isa'(westminster,station).

'_$_$_flora_fd'(westminster,'_$_$_flora_@'(x),212).

'_$_$_flora_fd'(westminster,'_$_$_flora_@'(y),100).

'_$_$_flora_mvd'(westminster,'_$_$_flora_@'(l),circle).

'_$_$_flora_mvd'(westminster,'_$_$_flora_@'(l),district).


%%% white_city:station[x->99;y->140;l->>{central}].
'_$_$_flora_isa'(white_city,station).

'_$_$_flora_fd'(white_city,'_$_$_flora_@'(x),99).

'_$_$_flora_fd'(white_city,'_$_$_flora_@'(y),140).

'_$_$_flora_mvd'(white_city,'_$_$_flora_@'(l),central).


%%% whitechapel:station[x->324;y->130;l->>{district,metropolitan}].
'_$_$_flora_isa'(whitechapel,station).

'_$_$_flora_fd'(whitechapel,'_$_$_flora_@'(x),324).

'_$_$_flora_fd'(whitechapel,'_$_$_flora_@'(y),130).

'_$_$_flora_mvd'(whitechapel,'_$_$_flora_@'(l),district).

'_$_$_flora_mvd'(whitechapel,'_$_$_flora_@'(l),metropolitan).


%%%   direct::connection.
'_$_$_flora_sub'(direct,connection).


%%%  d(X,Y) :direct[from->X;to->Y;l->>{L}] :- X:station[l->>{L}], Y:station[l->>{L}], not X=Y.
:- table
        '_$_$_flora_aux2'/3.

'_$_$_flora_aux2'(_h120205,_h120219,_h120658) :- 
        '_$_$_flora_isa_rhs'(_h120205,station),
        '_$_$_flora_mvd_rhs'(_h120205,'_$_$_flora_@'(l),_h120658),
        '_$_$_flora_isa_rhs'(_h120219,station),
        '_$_$_flora_mvd_rhs'(_h120219,'_$_$_flora_@'(l),_h120658),
        not(=(_h120205,_h120219)).

'_$_$_flora_isa'(d(_h120205,_h120219),direct) :- 
        '_$_$_flora_aux2'(_h120205,_h120219,_h120658).

'_$_$_flora_fd'(d(_h120205,_h120219),'_$_$_flora_@'(from),_h120205) :- 
        '_$_$_flora_aux2'(_h120205,_h120219,_h120658).

'_$_$_flora_fd'(d(_h120205,_h120219),'_$_$_flora_@'(to),_h120219) :- 
        '_$_$_flora_aux2'(_h120205,_h120219,_h120658).

'_$_$_flora_mvd'(d(_h120205,_h120219),'_$_$_flora_@'(l),_h120658) :- 
        '_$_$_flora_aux2'(_h120205,_h120219,_h120658).


%%%      ?- X:direct.
%?- '_$_$_flora_print_all'('_$_$_flora_isa_rhs'(_h122280,direct),'.'(var('X',_h122280),[])).

'_$_$_flora_tag'(query).


%%%  ?- X:direct[from->F].
%?- '_$_$_flora_print_all'(','('_$_$_flora_isa_rhs'(_h122802,direct),'_$_$_flora_fd_rhs'(_h122802,'_$_$_flora_@'(from),_h122987)),'.'(var('X',_h122802),'.'(var('F',_h122987),[]))).

'_$_$_flora_tag'(query).


%%% ?- X[from->F], X:direct.
%?- '_$_$_flora_print_all'(','('_$_$_flora_fd_rhs'(_h123581,'_$_$_flora_@'(from),_h123705),'_$_$_flora_isa_rhs'(_h123581,direct)),'.'(var('X',_h123581),'.'(var('F',_h123705),[]))).

'_$_$_flora_tag'(query).


%%%   

/*** closure/flrtrailer1.P: appended automatically by the FLORA compiler  ***/


/*****************************************************************************
  closure rules for X::Y
*****************************************************************************/
:- table '_$_$_flora_subclass'/2.

'_$_$_flora_subclass'(X,X) :- '_$_$_flora_sub'(X,_).
'_$_$_flora_subclass'(X,X) :- '_$_$_flora_sub'(_,X).
'_$_$_flora_subclass'(X,Y) :- '_$_$_flora_sub'(X,Y).

'_$_$_flora_subclass'(X,Y) :-
	'_$_$_flora_subclass'(X,Z), 
	'_$_$_flora_subclass'(Z,Y),
	(X \= Z -> true ; Z\=Y),
	( X = Y ->
	    write('*** Warning: cyclic subclass hierarchy: '),
	    write(X), write('::'), write(Z), write('::'), write(Y), nl
	  ;
	    true
	).


/*****************************************************************************
  closure rules for X:Y
*****************************************************************************/
:- table '_$_$_flora_isa'/2.

'_$_$_flora_isa'(O,C) :-
	'_$_$_flora_subclass'(C1,C),
	'_$_$_flora_isa'(O,C1).


/*****************************************************************************
  rules for monotonic behavior inheritance
*****************************************************************************/
:- table '_$_$_flora_fd'/3.
:- table '_$_$_flora_mvd'/3.
:- table '_$_$_flora_ifd'/3.
:- table '_$_$_flora_imvd'/3.

'_$_$_flora_fd'(O,MethodArgs,R) :-
	'_$_$_flora_ifd'(Class,MethodArgs,R),
	( '_$_$_flora_isa'(O,Class)
	  ;
	  '_$_$_flora_eql'(Class,C), '_$_$_flora_isa'(O,C)
	).

'_$_$_flora_mvd'(O,MethodArgs,R) :-
	'_$_$_flora_imvd'(Class,MethodArgs,R),
	( '_$_$_flora_isa'(O,Class)
	  ;
	  '_$_$_flora_eql'(Class,C), '_$_$_flora_isa'(O,C)
	).

'_$_$_flora_ifd'(Sub,MethodArgs,R) :-
	'_$_$_flora_ifd'(Class,MethodArgs,R),
	( '_$_$_flora_subclass'(Sub,Class)
	  ;
	  '_$_$_flora_eql'(Class,S), '_$_$_flora_subclass'(Sub,S)
	).

'_$_$_flora_imvd'(Sub,MethodArgs,R) :-
	'_$_$_flora_imvd'(Class,MethodArgs,R),
	( '_$_$_flora_subclass'(Sub,Class)
	  ;
	  '_$_$_flora_eql'(Class,S), '_$_$_flora_subclass'(Sub,S)
	).


/*****************************************************************************
  rules for congruence due to single-valued methods
*****************************************************************************/
:- table '_$_$_flora_eql'/2.
:- table '_$_$_flora_metheql'/2.

'_$_$_flora_eql'(X,Y) :-
	'_$_$_flora_fd'(O,M1,X),
	(M1=M2 ; '_$_$_flora_metheql'(M1,M2)),
	'_$_$_flora_fd'(O,M2,Y),
	not X=Y.

'_$_$_flora_eql'(X,Y) :-
	'_$_$_flora_eql'(O1,O2),
	'_$_$_flora_fd'(O1,M1,X),
	(M1=M2 ; '_$_$_flora_metheql'(M1,M2)),
	'_$_$_flora_fd'(O2,M2,Y),
	not X=Y.

'_$_$_flora_eql'(X,Y) :-
	'_$_$_flora_eql'(X,Z),
	'_$_$_flora_eql'(Z,Y),
	not X=Y.

/*****
'_$_$_flora_metheql'(X,Y) :-
	( nonvar(X) ->
	    functor(X,'_$_$_flora_@',N), N >= 1,
	    functor(Y,'_$_$_flora_@',N)

	  ; nonvar(Y) ->
	    functor(Y,'_$_$_flora_@',N), N >= 1,
	    functor(X,'_$_$_flora_@',N)
	),
	'_$_$_flora_argeql'(X,Y,N),
	not X=Y.
*****/

'_$_$_flora_metheql'(X,Y) :-
	functor(X,'_$_$_flora_@',N), N >= 1,
	functor(Y,'_$_$_flora_@',N),
	'_$_$_flora_argeql'(X,Y,N),
	not X=Y.


'_$_$_flora_argeql'(_,_,0).

'_$_$_flora_argeql'(X,Y,N) :-
	N >= 1,
	arg(N,X,Xn),
	arg(N,Y,Yn),
	(Xn=Yn ; '_$_$_flora_eql'(Xn,Yn)),
	M is N-1,
	'_$_$_flora_argeql'(X,Y,M).


/*****************************************************************************
  rules for object existence and empty result sets
*****************************************************************************/

'_$_$_flora_exists'(X) :- '_$_$_flora_fd'(X,_,_).
'_$_$_flora_exists'(X) :- '_$_$_flora_fd'(_,_,X).
'_$_$_flora_exists'(X) :- '_$_$_flora_mvd'(X,_,_).
'_$_$_flora_exists'(X) :- '_$_$_flora_mvd'(_,_,X).
'_$_$_flora_exists'(X) :- '_$_$_flora_ifd'(X,_,_).
'_$_$_flora_exists'(X) :- '_$_$_flora_ifd'(_,_,X).
'_$_$_flora_exists'(X) :- '_$_$_flora_imvd'(X,_,_).
'_$_$_flora_exists'(X) :- '_$_$_flora_imvd'(_,_,X).
'_$_$_flora_exists'(X) :- '_$_$_flora_isa'(X,_).
'_$_$_flora_exists'(X) :- '_$_$_flora_isa'(_,X).
'_$_$_flora_exists'(X) :- '_$_$_flora_sub'(X,_).
'_$_$_flora_exists'(X) :- '_$_$_flora_sub'(_,X).

'_$_$_flora_exists'(X) :-
	'_$_$_flora_fd'(_,M,_),
	M =.. [_|L],
	member(X,L).

'_$_$_flora_exists'(X) :-
	'_$_$_flora_mvd'(_,M,_),
	M =.. [_|L],
	member(X,L).

'_$_$_flora_exists'(X) :-
	'_$_$_flora_ifd'(_,M,_),
	M =.. [_|L],
	member(X,L).

'_$_$_flora_exists'(X) :-
	'_$_$_flora_imvd'(_,M,_),
	M =.. [_|L],
	member(X,L).


'_$_$_flora_mvd'(O,M) :- '_$_$_flora_mvd'(O,M,_).

'_$_$_flora_imvd'(O,M) :- '_$_$_flora_imvd'(O,M,_).


/*****************************************************************************
  rules for flattened path expressions on RHS
*****************************************************************************/
:- table '_$_$_flora_fd_rhs'/3.
:- table '_$_$_flora_mvd_rhs'/3.
:- table '_$_$_flora_ifd_rhs'/3.
:- table '_$_$_flora_imvd_rhs'/3.
:- table '_$_$_flora_mvd_rhs'/2.
:- table '_$_$_flora_imvd_rhs'/2.
:- table '_$_$_flora_isa_rhs'/2.
:- table '_$_$_flora_sub_rhs'/2.
:- table '_$_$_flora_fs_rhs'/3.
:- table '_$_$_flora_mvs_rhs'/3.


/****************************************************************************/
'_$_$_flora_fd_rhs'(Object,Method,Result) :-
	'_$_$_flora_fd'(Object,M,Result),
	(M=Method ; '_$_$_flora_metheql'(M,Method)).

'_$_$_flora_fd_rhs'(Object,Method,Result) :-
	'_$_$_flora_eql'(Object,O),
	'_$_$_flora_fd'(O,M,Result),
	(M=Method ; '_$_$_flora_metheql'(M,Method)).

'_$_$_flora_fd_rhs'(Object,Method,Result) :-
	'_$_$_flora_eql'(Result,R),
	'_$_$_flora_fd'(Object,M,R),
	(M=Method ; '_$_$_flora_metheql'(M,Method)).

'_$_$_flora_fd_rhs'(Object,Method,Result) :-
	'_$_$_flora_eql'(Result,R),
	'_$_$_flora_eql'(Object,O),
	'_$_$_flora_fd'(O,M,R),
	(M=Method ; '_$_$_flora_metheql'(M,Method)).

/****************************************************************************/
'_$_$_flora_mvd_rhs'(Object,Method,Result) :-
	'_$_$_flora_mvd'(Object,M,Result),
	(M=Method ; '_$_$_flora_metheql'(M,Method)).

'_$_$_flora_mvd_rhs'(Object,Method,Result) :-
	'_$_$_flora_eql'(Object,O),
	'_$_$_flora_mvd'(O,M,Result),
	(M=Method ; '_$_$_flora_metheql'(M,Method)).

'_$_$_flora_mvd_rhs'(Object,Method,Result) :-
	'_$_$_flora_eql'(Result,R),
	'_$_$_flora_mvd'(Object,M,R),
	(M=Method ; '_$_$_flora_metheql'(M,Method)).

'_$_$_flora_mvd_rhs'(Object,Method,Result) :-
	'_$_$_flora_eql'(Result,R),
	'_$_$_flora_eql'(Object,O),
	'_$_$_flora_mvd'(O,M,R),
	(M=Method ; '_$_$_flora_metheql'(M,Method)).

/****************************************************************************/
'_$_$_flora_ifd_rhs'(Object,Method,Result) :-
	'_$_$_flora_ifd'(Object,M,Result),
	(M=Method ; '_$_$_flora_metheql'(M,Method)).

'_$_$_flora_ifd_rhs'(Object,Method,Result) :-
	'_$_$_flora_eql'(Object,O),
	'_$_$_flora_ifd'(O,M,Result),
	(M=Method ; '_$_$_flora_metheql'(M,Method)).

'_$_$_flora_ifd_rhs'(Object,Method,Result) :-
	'_$_$_flora_eql'(Result,R),
	'_$_$_flora_ifd'(Object,M,R),
	(M=Method ; '_$_$_flora_metheql'(M,Method)).

'_$_$_flora_ifd_rhs'(Object,Method,Result) :-
	'_$_$_flora_eql'(Result,R),
	'_$_$_flora_eql'(Object,O),
	'_$_$_flora_ifd'(O,M,R),
	(M=Method ; '_$_$_flora_metheql'(M,Method)).

/****************************************************************************/
'_$_$_flora_imvd_rhs'(Object,Method,Result) :-
	'_$_$_flora_imvd'(Object,M,Result),
	(M=Method ; '_$_$_flora_metheql'(M,Method)).

'_$_$_flora_imvd_rhs'(Object,Method,Result) :-
	'_$_$_flora_eql'(Object,O),
	'_$_$_flora_imvd'(O,M,Result),
	(M=Method ; '_$_$_flora_metheql'(M,Method)).

'_$_$_flora_imvd_rhs'(Object,Method,Result) :-
	'_$_$_flora_eql'(Result,R),
	'_$_$_flora_imvd'(Object,M,R),
	(M=Method ; '_$_$_flora_metheql'(M,Method)).

'_$_$_flora_imvd_rhs'(Object,Method,Result) :-
	'_$_$_flora_eql'(Result,R),
	'_$_$_flora_eql'(Object,O),
	'_$_$_flora_imvd'(O,M,R),
	(M=Method ; '_$_$_flora_metheql'(M,Method)).

/****************************************************************************/
'_$_$_flora_mvd_rhs'(Object,Method) :-
	'_$_$_flora_mvd'(Object,M),
	(M=Method ; '_$_$_flora_metheql'(M,Method)).

'_$_$_flora_mvd_rhs'(Object,Method) :-
	'_$_$_flora_eql'(Object,O),
	'_$_$_flora_mvd'(O,M),
	(M=Method ; '_$_$_flora_metheql'(M,Method)).

/****************************************************************************/
'_$_$_flora_imvd_rhs'(Object,Method) :-
	'_$_$_flora_imvd'(Object,M),
	(M=Method ; '_$_$_flora_metheql'(M,Method)).

'_$_$_flora_imvd_rhs'(Object,Method) :-
	'_$_$_flora_eql'(Object,O),
	'_$_$_flora_imvd'(O,M),
	(M=Method ; '_$_$_flora_metheql'(M,Method)).

/****************************************************************************/
'_$_$_flora_isa_rhs'(Object1,Object2) :-
	'_$_$_flora_isa'(Object1,Object2).

'_$_$_flora_isa_rhs'(Object1,Object2) :-
	'_$_$_flora_eql'(Object1,O1),
	'_$_$_flora_isa'(O1,Object2).

'_$_$_flora_isa_rhs'(Object1,Object2) :-
	'_$_$_flora_eql'(Object2,O2),
	'_$_$_flora_isa'(Object1,O2).

'_$_$_flora_isa_rhs'(Object1,Object2) :-
	'_$_$_flora_eql'(Object1,O1),
	'_$_$_flora_eql'(Object2,O2),
	'_$_$_flora_isa'(O1,O2).

/****************************************************************************/
'_$_$_flora_sub_rhs'(Object1,Object2) :-
	'_$_$_flora_subclass'(Object1,Object2).

'_$_$_flora_sub_rhs'(Object1,Object2) :-
	'_$_$_flora_eql'(Object1,O1),
	'_$_$_flora_subclass'(O1,Object2).

'_$_$_flora_sub_rhs'(Object1,Object2) :-
	'_$_$_flora_eql'(Object2,O2),
	'_$_$_flora_subclass'(Object1,O2).

'_$_$_flora_sub_rhs'(Object1,Object2) :-
	'_$_$_flora_eql'(Object1,O1),
	'_$_$_flora_eql'(Object2,O2),
	'_$_$_flora_subclass'(O1,O2).

/****************************************************************************/
'_$_$_flora_fs_rhs'(Object,Method,Result) :-
	'_$_$_flora_fs'(Object,M,Result),
	(M=Method ; '_$_$_flora_metheql'(M,Method)).

'_$_$_flora_fs_rhs'(Object,Method,Result) :-
	'_$_$_flora_eql'(Object,O),
	'_$_$_flora_fs'(O,M,Result),
	(M=Method ; '_$_$_flora_metheql'(M,Method)).

'_$_$_flora_fs_rhs'(Object,Method,Result) :-
	'_$_$_flora_eql'(Result,R),
	'_$_$_flora_fs'(Object,M,R),
	(M=Method ; '_$_$_flora_metheql'(M,Method)).

'_$_$_flora_fs_rhs'(Object,Method,Result) :-
	'_$_$_flora_eql'(Result,R),
	'_$_$_flora_eql'(Object,O),
	'_$_$_flora_fs'(O,M,R),
	(M=Method ; '_$_$_flora_metheql'(M,Method)).

/****************************************************************************/
'_$_$_flora_mvs_rhs'(Object,Method,Result) :-
	'_$_$_flora_mvs'(Object,M,Result),
	(M=Method ; '_$_$_flora_metheql'(M,Method)).

'_$_$_flora_mvs_rhs'(Object,Method,Result) :-
	'_$_$_flora_eql'(Object,O),
	'_$_$_flora_mvs'(O,M,Result),
	(M=Method ; '_$_$_flora_metheql'(M,Method)).

'_$_$_flora_mvs_rhs'(Object,Method,Result) :-
	'_$_$_flora_eql'(Result,R),
	'_$_$_flora_mvs'(Object,M,R),
	(M=Method ; '_$_$_flora_metheql'(M,Method)).

'_$_$_flora_mvs_rhs'(Object,Method,Result) :-
	'_$_$_flora_eql'(Result,R),
	'_$_$_flora_eql'(Object,O),
	'_$_$_flora_mvs'(O,M,R),
	(M=Method ; '_$_$_flora_metheql'(M,Method)).

/*****************************************************************************
  complementary rules to protect against "undefined" error reported by XSB 
*****************************************************************************/
'_$_$_flora_fd'(_,_,_)   :- fail.
'_$_$_flora_mvd'(_,_,_)  :- fail.
'_$_$_flora_ifd'(_,_,_)  :- fail.
'_$_$_flora_imvd'(_,_,_) :- fail.
'_$_$_flora_fs'(_,_,_)   :- fail.
'_$_$_flora_mvs'(_,_,_)  :- fail.
'_$_$_flora_sub'(_,_)    :- fail.
'_$_$_flora_isa'(_,_)    :- fail.


/****************************  End of Trailer  ******************************/
