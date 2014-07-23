GearRemove = (vehicle player);
removebackpack GearRemove;

GearAdd = (vehicle player);
GearAdd addBackpack 'DZ_LargeGunBag_EP1';
(Unitbackpack GearAdd) addWeaponCargoGlobal ['M110_NVG_EP1', 1];
(Unitbackpack GearAdd) addMagazineCargoGlobal ['20Rnd_762x51_B_SCAR', 6];