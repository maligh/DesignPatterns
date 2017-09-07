//
//  CEO.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/9/7.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "CEO.h"

@implementation CEO

- (void)handleLeaveApplication:(NSUInteger)dayCount {
    if (dayCount > 30) {
        NSLog(@"CEO:世界那么大你是不是也想出去看看？");
    } else {
        if (self.superior == nil) {
            NSLog(@"CEO:Bug都写完了吗？写完就可以早点休假了");
            return;
        }
        [self.superior handleLeaveApplication:dayCount];
    }
}

@end
