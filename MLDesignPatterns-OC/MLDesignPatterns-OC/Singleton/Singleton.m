//
//  Singleton.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/8/15.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

+ (instancetype)sharedInstance {
    static id shareInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareInstance = [[self alloc] init];
    });
    return shareInstance;
}

@end
