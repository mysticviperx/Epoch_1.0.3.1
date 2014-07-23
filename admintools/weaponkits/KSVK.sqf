GearRemove = (vehicle player);
removebackpack GearRemove;

GearAdd = (vehicle player);
GearAdd addBackpack 'DZ_LargeGunBag_EP1';
(Unitbackpack GearAdd) addWeaponCargoGlobal ['ksvk', 1];
(Unitbackpack GearAdd) addMagazineCargoGlobal ['5Rnd_127x108_KSVK', 6];