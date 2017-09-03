//
//  Egg.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/9/4.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "Egg.h"

@implementation Egg

- (NSString *)getDescription {
    return [NSString stringWithFormat:@"%@+煎蛋", [self.burger getDescription]];
}
- (NSInteger)getCost {
    return [self.burger getCost] + 2;
}

@end
