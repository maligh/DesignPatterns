//
//  Condiment.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/9/3.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "Condiment.h"

@implementation Condiment

- (instancetype)initWithChickenBurger:(id<Humburger>)burger {
    if (self = [super init]) {
        _burger = burger;
    }
    return self;
}

- (NSString *)getDescription {
    return @"";
}
- (NSInteger)getCost {
    return 0;
}

@end
