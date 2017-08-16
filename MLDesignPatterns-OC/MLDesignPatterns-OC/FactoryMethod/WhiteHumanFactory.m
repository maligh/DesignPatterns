//
//  WhiteHumanFactory.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/8/16.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "WhiteHumanFactory.h"
#import "WhiteHuman.m"

@implementation WhiteHumanFactory

- (Human *)createHuman {
    return [[WhiteHuman alloc] init];
}

@end
