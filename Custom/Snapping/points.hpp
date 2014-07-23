class SnapPoints
{
	class MetalFloor_DZ {
		snap[] = {"MetalFloor_DZ"};
		points[] = {
			{
				{0, -5.3, 0}, 0
			},
			{
				{0, 5.3, 0}, 0
			},
			{
				{5.3, 0, 0}, 0
			},
			{
				{-5.3, 0, 0}, 0
			}
		};
	};

	class WoodFloor_DZ {
		snap[] = {"WoodFloor_DZ"};
		points[] = {
			{
				{0, -4.68, 0}, 0
			},
			{
				{0, 4.68, 0}, 0
			},
			{
				{4.95, 0, 0}, 0
			},
			{
				{-4.95, 0, 0}, 0
			}
		};
	};

	class CinderBase {
		snap[] = {
			"CinderWall_DZ",
			"CinderWallDoorway_DZ",
			"CinderWallDoorLocked_DZ",
			"CinderWallDoor_DZ",
			"CinderWallSmallDoorway_DZ",
			"CinderWallDoorSmallLocked_DZ",
			"CinderWallHalf_DZ",
			"CinderWallDoorSmall_DZ"
		};
		points[] = {
			{
				{-5.5134, 0, 0}, 0
			},
			{
				{5.5134, 0, 0}, 0
			},
			{
				{2.7567, 2.7567, 0}, 270
			},
			{
				{2.7567, -2.7567, 0}, 270
			},
			{
				{-2.7567, 2.7567, 0}, 90
			},
			{
				{-2.7567, -2.7567, 0}, 90
			}
		};
	};

	class CinderWall_DZ: 				CinderBase {};
	class CinderWallDoorway_DZ: 		CinderBase {};
	class CinderWallDoorLocked_DZ: 		CinderBase {};
	class CinderWallDoor_DZ: 			CinderBase {};
	class CinderWallSmallDoorway_DZ: 	CinderBase {};
	class CinderWallDoorSmallLocked_DZ: CinderBase {};
	class CinderWallHalf_DZ: 			CinderBase {};

	class WoodLargeBase {
		snap[] = {
			"WoodLargeWall_DZ",
			"Land_DZE_LargeWoodDoor",
			"WoodLargeWallWin_DZ",
			"WoodLargeWallDoor_DZ",
			"Land_DZE_GarageWoodDoor",
			"Land_DZE_GarageWoodDoorLocked",
			"Land_DZE_LargeWoodDoorLocked",
			"WoodSmallWallThird_DZ"
		};
		points[] = {
			{
				{-4.9, 0, 0}, 0
			},
			{
				{4.9, 0, 0}, 0
			},
			{
				{2.45, 2.45, 0}, 270
			},
			{
				{2.45, -2.45, 0}, 270
			},
			{
				{-2.45, 2.45, 0}, 90
			},
			{
				{-2.45, -2.45, 0}, 90
			}			
		};
	};
	class WoodLargeWall_DZ: 				WoodLargeBase {};
	class Land_DZE_LargeWoodDoor: 			WoodLargeBase {};
	class WoodLargeWallWin_DZ: 				WoodLargeBase {};
	class WoodLargeWallDoor_DZ: 			WoodLargeBase {};
	class Land_DZE_GarageWoodDoor: 			WoodLargeBase {};
	class Land_DZE_GarageWoodDoorLocked: 	WoodLargeBase {};
	class Land_DZE_LargeWoodDoorLocked: 	WoodLargeBase {};
	class WoodSmallWallThird_DZ: 			WoodLargeBase {};

	class WoodSmallBase {
		snap[] = {
			"WoodSmallWallDoor_DZ",
			"WoodSmallWall_DZ",
			"WoodSmallWallWin_DZ",
			"Land_DZE_WoodDoor",
			"Land_DZE_WoodDoorLocked"
		};
		points[] = {
			{
				{-4.58326, 0, 0}, 0
			},
			{
				{4.58326, 0, 0}, 0
			},
			{
				{2.34163, 2.34163, 0}, 270
			},
			{
				{2.34163, -2.34163, 0}, 270
			},
			{
				{-2.34163, 2.34163, 0}, 90
			},
			{
				{-2.34163, -2.34163, 0}, 90
			}			
		};
	};
	
	class WoodSmallWallDoor_DZ: 	WoodSmallBase {};
	class WoodSmallWall_DZ: 		WoodSmallBase {};
	class WoodSmallWallWin_DZ: 		WoodSmallBase {};
	class Land_DZE_WoodDoor: 		WoodSmallBase {};
	class Land_DZE_WoodDoorLocked: 	WoodSmallBase {};

};