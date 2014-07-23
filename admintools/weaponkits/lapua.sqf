GearRemove = (vehicle player);
removebackpack GearRemove;

GearAdd = (vehicle player);
GearAdd addBackpack 'DZ_LargeGunBag_EP1';
(Unitbackpack GearAdd) addWeaponCargoGlobal ['BAF_LRR_scoped', 1];
(Unitbackpack GearAdd) addWeaponCargoGlobal ['BAF_LRR_scoped_W', 1];
(Unitbackpack GearAdd) addMagazineCargoGlobal ['5Rnd_86x70_L115A1', 6];