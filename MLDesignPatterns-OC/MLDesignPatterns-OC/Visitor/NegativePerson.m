//
//  NegativePerson.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/10/17.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "NegativePerson.h"

@implementation NegativePerson

- (void)accept:(id <ActionProtocol>)visitor {
    [visitor negativeConclusion:[[NegativePerson alloc] init]];
}

@end
