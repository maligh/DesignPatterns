//
//  WoodDoorFactory.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/8/21.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "WoodDoorFactory.h"
#import "WoodDoor.h"
#import "WoodDoorInstaller.h"

@implementation WoodDoorFactory

+ (Door *)createDoor {
    return [[WoodDoor alloc] init];
}

+ (DoorInstaller *)createDoorInstall {
    return [[WoodDoorInstaller alloc] init];
}

@end
