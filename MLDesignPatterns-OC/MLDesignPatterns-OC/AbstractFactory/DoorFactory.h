//
//  DoorFactory.h
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/8/21.
//  Copyright © 2017年 mali. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Door;
@class DoorInstaller;

@protocol DoorFactory <NSObject>

+ (Door *)createDoor;
+ (DoorInstaller *)createDoorInstall;

@end
