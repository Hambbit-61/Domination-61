// by Xeno
//#define __DEBUG__
#include "..\x_setup.sqf"

if (!hasInterface) exitWith {};

if (player == _this) then {
	if (player getUnitTrait "Medic") then {
		player setVariable ["d_medtent", []];
		player setVariable ["d_medic_tent", objNull];
		systemChat (localize "STR_DOM_MISSIONSTRING_656a");
	};
	if (player getUnitTrait "engineer") then {
		player setVariable ["d_farp_pos", []];
		player setVariable ["d_farp_obj", objNull];
		systemChat (localize "STR_DOM_MISSIONSTRING_658");
	};
};