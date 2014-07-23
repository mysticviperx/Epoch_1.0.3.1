GearRemove = (vehicle player);
removebackpack GearRemove;

GearAdd = (vehicle player);
GearAdd addBackpack 'DZ_LargeGunBag_EP1';
(Unitbackpack GearAdd) addWeaponCargoGlobal ['AA12_PMC', 1];
(Unitbackpack GearAdd) addMagazineCargoGlobal ['20Rnd_B_AA12_74Slug', 6];
(Unitbackpack GearAdd) addMagazineCargoGlobal ['20Rnd_B_AA12_HE', 6];
(Unitbackpack GearAdd) addMagazineCargoGlobal ['20Rnd_B_AA12_Pellets', 6];
