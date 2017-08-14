//
//  Employee.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/8/11.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "Employee.h"

@implementation Employee

- (instancetype)initWithName:(NSString *)name configWithAge:(NSInteger)age department:(NSString *)department company:(Company *)company {
    if (self = [super init]) {
        _name = name;
        _age = age;
        _department = department;
        _company = company;
    }
    return self;
}

- (id)copyWithZone:(NSZone *)zone {
    return nil;
}

@end
