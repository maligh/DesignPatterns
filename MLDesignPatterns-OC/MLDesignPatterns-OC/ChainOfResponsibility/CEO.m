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
    if (dayCount < 20) {
        NSLog(@"CEO:我很忙去找你上司");
        return;
    }
    if (dayCount < 30) {
        NSLog(@"dayCount:%ld----CEO:Bug都写完了吗？那就去吧", dayCount);
    } else {
        NSLog(@"dayCount:%ld----CEO:世界那么大你是不是也想出去看看？回去写你的Bug", dayCount);
    }
}

@end
