//
//  CTO.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/9/7.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "CTO.h"

@implementation CTO

- (void)handleLeaveApplication:(NSUInteger)dayCount {
    if (dayCount < 10) {
        NSLog(@"CTO:我很忙，这种小事别烦我");
        return;
    }
    if (dayCount < 20) {
        NSLog(@"dayCount:%ld----CTO:又请假相亲啊，去吧去吧~", dayCount);
    } else {
        if (self.superior != nil) {
            NSLog(@"dayCount:%ld----CTO:又请假相亲啊，我批准了，再去问一下我的老大吧~", dayCount);
            [self.superior handleLeaveApplication:dayCount];
        }
    }
}

@end
