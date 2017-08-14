//
//  EmployeeDeepCopy.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/8/14.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "EmployeeDeepCopy.h"

@implementation EmployeeDeepCopy

- (id)copyWithZone:(NSZone *)zone {
    Employee *employee = [[Employee allocWithZone:zone] init];
    employee.name = [self.name copy];
    employee.age = self.age;
    employee.department = [self.department copy];
    employee.company = [self.company copy];
    return employee;
}

@end
