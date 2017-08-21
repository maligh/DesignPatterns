//
//  main.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/8/10.
//  Copyright © 2017年 mali. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NuWa.h"
#import "Door.h"
#import "DoorInstaller.h"
#import "WoodDoorFactory.h"
#import "IronDoorFactory.h"

void factoryMethod() {
    [NuWa someMagic];
}

void abstractFactory() {
    Door *woodDoor = [WoodDoorFactory createDoor];
    DoorInstaller *woodDoorInstaller = [WoodDoorFactory createDoorInstall];
    [woodDoor getDescription];
    [woodDoorInstaller getDescription];
    
    Door *ironDoor = [IronDoorFactory createDoor];
    DoorInstaller *ironDoorInstaller = [IronDoorFactory createDoorInstall];
    [ironDoor getDescription];
    [ironDoorInstaller getDescription];
}



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//    factoryMethod();
//    abstractFactory();
        
    }
    return 0;
}


