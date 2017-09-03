//
//  Chilli.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/9/3.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "Chilli.h"

@implementation Chilli

- (NSString *)getDescription {
    return [NSString stringWithFormat:@"%@+辣椒粉", [self.burger getDescription]];
}
- (NSInteger)getCost {
    return [self.burger getCost] + 1;
}

@end
