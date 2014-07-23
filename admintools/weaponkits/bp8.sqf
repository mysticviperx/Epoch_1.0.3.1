GearRemove = (vehicle player);
removebackpack GearRemove;

GearAdd = (vehicle player);
GearAdd addBackpack 'DZ_LargeGunBag_EP1';
(Unitbackpack GearAdd) addMagazineCargoGlobal ['CinderBlocks', 45];
(Unitbackpack GearAdd) addMagazineCargoGlobal ['MortarBucket', 15];
//(Unitbackpack GearAdd) addMagazineCargoGlobal ['OBJECT', 2];
