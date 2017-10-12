//
//  User.h
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/10/12.
//  Copyright © 2017年 mali. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ChatRoom.h"

@interface User : NSObject

- (instancetype)initWithName:(NSString *)name room:(ChatRoom *)room;

- (void)sendMessage:(NSString *)message;

@end
