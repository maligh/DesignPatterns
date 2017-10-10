//
//  Waiter.h
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/10/10.
//  Copyright © 2017年 mali. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandProtocol.h"

/**
 服务员
 */
@interface Waiter : NSObject

/**
 点菜
 */
- (void)addOrder:(id <CommandProtocol>)command;

/**
 全点好了
 */
- (void)submmitOrder;

/**
 取消菜
 */
- (void)cancleOrder:(id <CommandProtocol>)command;

@end
