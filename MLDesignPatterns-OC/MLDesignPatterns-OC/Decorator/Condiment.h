//
//  Condiment.h
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/9/3.
//  Copyright © 2017年 mali. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ChickenBurger.h"
#import "Humburger.h"

@interface Condiment : NSObject<Humburger>

@property (nonatomic, strong, readonly) ChickenBurger *burger;

- (instancetype)initWithChickenBurger:(id<Humburger>)burger;

@end
