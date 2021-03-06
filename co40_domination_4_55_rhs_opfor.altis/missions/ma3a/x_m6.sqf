// by Xeno
//#define __DEBUG__
#include "..\..\x_setup.sqf"

d_x_sm_pos = "d_sm_6" call d_fnc_smmapos; // index: 6,   Hangar Research Base nr Agios Georgios
d_x_sm_type = "normal"; // "convoy"

if (hasInterface) then {
	d_cur_sm_txt = localize "STR_DOM_MISSIONSTRING_814";
	d_current_mission_resolved_text = localize "STR_DOM_MISSIONSTRING_815";
};

if (isServer) then {
	d_x_sm_pos params ["_poss"];
	private _vec = createVehicle [d_sm_hangar, _poss, [], 0, "NONE"];
	_vec call d_fnc_addKilledEHSM;
	_vec setDir (markerDir "d_sm_6");
	_vec setPos _poss;
	d_x_sm_vec_rem_ar pushBack _vec;
	sleep 2.123;
	["specops", 1, "allmen", 1, d_x_sm_pos # 1, 200, true] spawn d_fnc_CreateInf;
	sleep 2.012;
	["aa", 1, "tracked_apc", 1, "tank", 1, d_x_sm_pos # 2, 1, 200, true] spawn d_fnc_CreateArmor;
};
