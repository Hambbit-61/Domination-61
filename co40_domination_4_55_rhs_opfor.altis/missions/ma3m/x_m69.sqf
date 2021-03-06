//#define __DEBUG__
#include "..\..\x_setup.sqf"

// clear land mines
// marker (d_sm_69) somewhere on the crossroads (road), where mines will spawn

d_x_sm_pos = "d_sm_69" call d_fnc_smmapos; 
d_x_sm_type = "normal"; // "convoy"

if (hasInterface) then {
	d_cur_sm_txt = localize "STR_DOM_MISSIONSTRING_1666a";
	d_current_mission_resolved_text = localize "STR_DOM_MISSIONSTRING_1667";
};

if (isServer) then {
	[d_x_sm_pos # 0, "land"] spawn d_fnc_sidemines;
	sleep 2.123;
	["specops", 2, "allmen", 4, d_x_sm_pos # 0, 150, true] spawn d_fnc_CreateInf;
	sleep 2.123;
	private _random_point = [d_x_sm_pos # 0, 100, 2] call d_fnc_GetRanPointCircle;
	["stat_mg", 1, "stat_gl", 1, "", 0, _random_point, 1, 100, false] spawn d_fnc_CreateArmor;
	sleep 2.123;
	_random_point = [d_x_sm_pos # 0, 150] call d_fnc_getranpointcircleouter;
    private _wheeled = selectRandom ["wheeled_apc", "jeep_gl", "jeep_mg"];
	[_wheeled, 1, selectRandom ["tank", "tracked_apc", "aa"], 1, _wheeled, 1, _random_point, 1, 300, true] spawn d_fnc_CreateArmor;
};
