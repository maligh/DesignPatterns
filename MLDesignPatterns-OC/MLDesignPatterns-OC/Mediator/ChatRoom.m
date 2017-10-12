//
//  ChatRoom.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/10/12.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "ChatRoom.h"

@implementation ChatRoom

- (void)showMessage:(NSString *)message {
    NSLog(@"%@\n",message);
}

- (void)showMessage:(NSString *)message userName:(NSString *)name {
    NSString *string = [NSString stringWithFormat:@"%@:%@", name, message];
    [self showMessage:string];
}

@end
