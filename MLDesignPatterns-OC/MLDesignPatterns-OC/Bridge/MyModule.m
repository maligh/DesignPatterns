//
//  MyModule.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/8/30.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "MyModule.h"
#import "Theme.h"

@implementation MyModule

+ (NSString *)moduleDescription {
    return @"我的模块";
}

+ (void)moduleDescriptionWithTheme:(Theme *)theme {
    NSLog(@"%@-%@", [MyModule moduleDescription], [theme getColor]);
}

@end
