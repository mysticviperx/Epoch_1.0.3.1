/*===========================================================================================================
DayZ Epoch Admin Base Script
http://opendayz.net/threads/request-player-id-zone-restriction-and-humanity-restriction-zone.8526/#post-27572
===========================================================================================================*/


//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#include "AdminTools-AccessList.sqf"
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

if ((getPlayerUID player) in _admins || (getPlayerUID player) in _mods) then {
playsound "short";
titleText ["Carrier ATC to Alpha Charlie Echo 0-7, Cleared to Land on Runway 2-7, Call the Ball.", "PLAIN DOWN", 3];
} else {
playsound "long";
titleText ["WARNING: YOU HAVE ENTERED RESTRICTED AIRSPACE", "PLAIN DOWN", 3];
sleep 10;
playsound "Alarm";
titleText ["WARNING: UNAUTHORIZED INTRUDERS WILL BE FIRED UPON", "PLAIN DOWN", 3];
sleep 10;
playsound "long";
titleText ["WARNING: 30 SECONDS TILL WEAPONS LOCK, EXIT THIS AIRSPACE IMMEDIATLY", "PLAIN DOWN", 3];
sleep 10;
playsound "alarm";
titleText ["WARNING: VACATE THIS AIRSPACE! TURN HEADING 1-8-0 AT 200, SPEED 150KPH", "PLAIN DOWN", 3];
sleep 10;
playsound "long";
titleText ["WARNING: YOU HAVE 15 SECONDS TO MAKE HEADING 1-8-0 OR WE WILL FIRE", "PLAIN DOWN", 3];
sleep 10;
playsound "missile";
titleText ["DANGER CLOSE: FIRE ON TARGET FOXTROT UNIFORM 1-3", "PLAIN DOWN", 3];
sleep 5;
player setDamage 1;
};