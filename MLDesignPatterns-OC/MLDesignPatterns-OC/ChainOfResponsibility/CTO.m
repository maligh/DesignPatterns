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
    if (dayCount < 15) {
        NSLog(@"CTO:我很忙，这种小事别烦我");
        return;
    }
    if (dayCount < 30) {
        NSLog(@"CTO:又请假相亲啊，去吧去吧~");
    } else {
        if (self.superior != nil) {
            [self.superior handleLeaveApplication:dayCount];
        }
    }
}

@end
