//
//  PM.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/9/7.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "PM.h"

@implementation PM

- (void)handleLeaveApplication:(NSUInteger)dayCount {

    if (dayCount < 10) {
        NSLog(@"dayCount:%ld----PM:请假跟女朋友去旅游啊，调试完这个bug就走吧。过来你看，你的程序报错了：\"找不到对象\"", dayCount);
    } else {
        if (self.superior != nil) {
            NSLog(@"dayCount:%ld----PM:请假跟女朋友去旅游啊，我批准了，再去问一下我的老大吧", dayCount);
            [self.superior handleLeaveApplication:dayCount];
        }
    }
}

@end
