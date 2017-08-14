//
//  Employee.h
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/8/11.
//  Copyright © 2017年 mali. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Company.h"

/**
 雇员类
 */
@interface Employee : NSObject<NSCopying>

@property (nonatomic, strong) NSString *name;             ///< 姓名
@property (nonatomic, assign) NSInteger age;              ///< 年龄
@property (nonatomic, strong) NSString *department;       ///< 部门

@property (nonatomic, strong) Company *company;           ///< 公司信息


- (instancetype)initWithName:(NSString *)name configWithAge:(NSInteger)age department:(NSString *)department company:(Company *)company;

@end
