// by Xeno
//#define __DEBUG__
#include "..\..\x_setup.sqf"

d_x_sm_pos = "d_sm_74" call d_fnc_smmapos; // index: 74,   Tanks  attacking Delfinaki
d_x_sm_type = "normal"; // "convoy"

if (hasInterface) then {
	d_cur_sm_txt = localize "STR_DOM_MISSIONSTRING_1810";
	d_current_mission_resolved_text = localize "STR_DOM_MISSIONSTRING_767";
};

if (isServer) then {
	[d_x_sm_pos, [markerDir "d_sm_74_1",markerDir "d_sm_74_2",markerDir "d_sm_74_3",markerDir "d_sm_74_4",markerDir "d_sm_74_5",markerDir "d_sm_74_6"]] spawn d_fnc_sidetanks;
};
