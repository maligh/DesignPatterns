//
//  NuWa.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/8/16.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "NuWa.h"
#import "WhiteHumanFactory.h"
#import "YellowHumanFactory.h"
#import "BlackHumanFactory.h"
#import "Human.h"

@implementation NuWa

+ (void)someMagic {
    Human *whiteMan = [WhiteHumanFactory createHuman];
    [whiteMan talk];
    Human *yellowMan = [YellowHumanFactory createHuman];
    [yellowMan talk];
    Human *blackMan = [BlackHumanFactory createHuman];
    [blackMan talk];
}

@end
