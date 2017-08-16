//
//  BlackHumanFactory.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/8/16.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "BlackHumanFactory.h"
#import "BlackHuman.h"

@implementation BlackHumanFactory

+ (Human *)createHuman {
    return [[BlackHuman alloc] init];
}

@end
