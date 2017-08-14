//
//  EmployeeShallowCopy.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/8/14.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "EmployeeShallowCopy.h"

@implementation EmployeeShallowCopy

- (id)copyWithZone:(NSZone *)zone {
    Employee *employee = [[Employee allocWithZone:zone] init];
    employee.name = self.name;
    employee.age = self.age;
    employee.department = self.department;
    employee.company = self.company;
    return employee;
}

@end
