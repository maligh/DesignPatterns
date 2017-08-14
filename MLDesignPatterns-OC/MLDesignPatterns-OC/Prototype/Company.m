//
//  Company.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/8/11.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "Company.h"

@implementation Company

- (instancetype)initWithName:(NSString *)name establishmentTime:(NSString *)establishmentTime level:(NSString *)level {
    if (self = [super init]) {
        _name = name;
        _establishmentTime = establishmentTime;
        _level = level;
    }
    return self;
}

- (id)copyWithZone:(NSZone *)zone {
    Company *company = [[Company allocWithZone:zone] init];
    company.name = [self.name copy];
    company.establishmentTime = [self.establishmentTime copy];
    company.level = [self.level copy];
    return company;
}

@end
