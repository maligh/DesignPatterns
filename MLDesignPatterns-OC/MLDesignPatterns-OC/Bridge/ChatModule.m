//
//  ChatModule.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/8/30.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "ChatModule.h"
#import "Theme.h"

@implementation ChatModule

+ (NSString *)moduleDescription {
    return @"聊天模块";
}

+ (void)moduleDescriptionWithTheme:(Theme *)theme {
     NSLog(@"%@-%@", [ChatModule moduleDescription], [theme getColor]);
}

@end
