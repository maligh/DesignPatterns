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

    if (dayCount < 15) {
        NSLog(@"PM:又请假相亲啊，去吧去吧~");
    } else {
        if (self.superior != nil) {
            [self.superior handleLeaveApplication:dayCount];
        }
    }
}

@end
