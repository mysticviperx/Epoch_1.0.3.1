if (isnil ("cargod")) then {cargod = 0};

if (cargod==0) then
{
    cutText ["Cargod enabled.", "PLAIN"];
    cargod=1;
}
else
{
    cutText ["Cargod disabled.", "PLAIN"];
    cargod=0;
};
while {(alive (vehicle player)) && (cargod==1)} do 
{
	vehicle player setfuel 1;
	vehicle player setvehicleammo 1;
	vehicle player setdammage 0;
	sleep 0.001;
};