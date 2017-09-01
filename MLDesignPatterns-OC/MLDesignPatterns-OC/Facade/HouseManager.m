//
//  HouseManager.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/9/1.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "HouseManager.h"
#import "Light.h"
#import "Curtain.h"

@implementation HouseManager

- (void)sleep {
    [Curtain down];
    [Light off];
}

- (void)getUp {
    [Light on];
    [Curtain up];
}

@end
