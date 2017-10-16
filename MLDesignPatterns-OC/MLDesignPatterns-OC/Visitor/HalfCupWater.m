//
//  HalfCupWater.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/10/17.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "HalfCupWater.h"

@implementation HalfCupWater

- (void)positiveConclusion:(id <PersonProtocol>)positive {
    NSLog(@"乐观的人:还有半杯水可以喝");
}
- (void)negativeConclusion:(id <PersonProtocol>)negavite {
    NSLog(@"悲观的人:只剩半杯水了啊");
}

@end
