//
//  PositivePerson.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/10/17.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "PositivePerson.h"

@implementation PositivePerson

- (void)accept:(id <ActionProtocol>)visitor {
    [visitor positiveConclusion:[[PositivePerson alloc] init]];
}

@end
