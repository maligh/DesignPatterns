//
//  YellowHumanFactory.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/8/16.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "YellowHumanFactory.h"
#import "YellowHuman.h"

@implementation YellowHumanFactory

+ (Human *)createHuman {
    return [[YellowHuman alloc] init];
}

@end
