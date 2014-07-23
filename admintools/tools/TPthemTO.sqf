//AlPMaker
_max = 10; snext = false; plist = []; pselect5 = "";
{if ((_x != player) && (getPlayerUID _x != "")) then {plist set [count plist, name _x];};} forEach entities "CAManBase";
{if ((count crew _x) > 0) then {{if ((_x != player) && (getPlayerUID _x != "")) then {plist set [count plist, name _x];};} forEach crew _x;};} foreach (entities "LandVehicle" + entities "Air" + entities "Ship");
smenu =
{
	_pmenu = [["",true]];
	for "_i" from (_this select 0) to (_this select 1) do
	{_arr = [format['%1', plist select (_i)], [12],  "", -5, [["expression", format ["pselect5 = plist select %1;", _i]]], "1", "1"]; _pmenu set [_i + 2, _arr];};
	if (count plist > (_this select 1)) then {_pmenu set [(_this select 1) + 2, ["Next", [13], "", -5, [["expression", "snext = true;"]], "1", "1"]];}
	else {_pmenu set [(_this select 1) + 2, ["", [-1], "", -5, [["expression", ""]], "1", "0"]];};
	_pmenu set [(_this select 1) + 3, ["Exit", [13], "", -5, [["expression", "pselect5 = 'exit';"]], "1", "1"]];
	showCommandingMenu "#USER:_pmenu";
};
_j = 0; _max = 10; if (_max>9) then {_max = 10;};
while {pselect5 == ""} do
{
	[_j, (_j + _max) min (count plist)] call smenu; _j = _j + _max;
	WaitUntil {pselect5 != "" or snext};	
	snext = false;
};
if (pselect5 != "exit") then
{
	_name = pselect5;
	{
		if(name _x == _name) then
[
	["",true],
		["IDC Arena - Top", [2],  "", -5, [["expression", format[_x setpos [1124.29, 4145.71, 48]]]], "1", "1"],
		["IDC Arena - Inside", [3],  "", -5, [["expression", format[_x setpos [6824.55, 2441.53, 0]]]], "1", "1"],		
		//["IDC Arena - Bottom", [4],  "", -5, [["expression", format[_x setpos]]], "1", "1"],				
		//["IDC Penalty Box", [5],  "", -5, [["expression", format[_x setpos]]], "1", "1"],		
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

	} forEach entities "CAManBase";
};
