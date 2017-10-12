//
//  User.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/10/12.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "User.h"

@interface User()

@property (nonatomic, copy) NSString *name;     ///< 用户昵称
@property (nonatomic, strong) ChatRoom *room;   ///< 当前聊天室

@end

@implementation User

- (instancetype)initWithName:(NSString *)name room:(ChatRoom *)room {
    if (self = [super init]) {
        _name = name;
        _room = room;
    }
    return self;
}

- (void)sendMessage:(NSString *)message {
    [_room showMessage:message userName:_name];
}

@end
