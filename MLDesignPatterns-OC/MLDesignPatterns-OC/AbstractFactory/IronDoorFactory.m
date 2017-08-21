//
//  IronDoorFactory.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/8/21.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "IronDoorFactory.h"
#import "IronDoor.h"
#import "IronDoorInstaller.h"

@implementation IronDoorFactory

+ (Door *)createDoor {
    return [[IronDoor alloc] init];
}

+ (DoorInstaller *)createDoorInstall {
    return [[IronDoorInstaller alloc] init];
}

@end
