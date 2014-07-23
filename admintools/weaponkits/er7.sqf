GearRemove = (vehicle player);
removebackpack GearRemove;

GearAdd = (vehicle player);
GearAdd addBackpack 'DZ_LargeGunBag_EP1';
(Unitbackpack GearAdd) addWeaponCargoGlobal ['nsw_er7s', 1];
(Unitbackpack GearAdd) addWeaponCargoGlobal ['nsw_er7a', 1];
(Unitbackpack GearAdd) addMagazineCargoGlobal ['nsw_er7mm', 6];