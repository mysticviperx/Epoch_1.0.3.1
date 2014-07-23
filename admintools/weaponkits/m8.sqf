GearRemove = (vehicle player);
removeAllWeapons GearRemove;
removeAllItems GearRemove;
removebackpack GearRemove;

GearAdd = (vehicle player);
GearAdd addWeapon 'm8_holo_sd';
GearAdd addMagazine '100Rnd_556x45_BetaCMag';
GearAdd addMagazine '30Rnd_556x45_StanagSD';
GearAdd addMagazine '30Rnd_556x45_StanagSD';
GearAdd addMagazine '30Rnd_556x45_StanagSD';
GearAdd addBackpack 'DZ_LargeGunBag_EP1';
(Unitbackpack GearAdd) addWeaponCargoGlobal ['m8_carbine', 1];
(Unitbackpack GearAdd) addWeaponCargoGlobal ['m8_carbine_pmc', 1];
(Unitbackpack GearAdd) addWeaponCargoGlobal ['m8_carbineGL', 1];
(Unitbackpack GearAdd) addWeaponCargoGlobal ['m8_compact', 1];
(Unitbackpack GearAdd) addWeaponCargoGlobal ['m8_SAW', 1];
(Unitbackpack GearAdd) addWeaponCargoGlobal ['m8_sharpshooter', 1];
