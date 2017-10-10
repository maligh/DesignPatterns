//
//  Waiter.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/10/10.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "Waiter.h"

@interface Waiter()

@property (nonatomic, strong) NSMutableArray *commandQueue;

@end

@implementation Waiter

- (instancetype)init {
    if (self = [super init]) {
        self.commandQueue = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addOrder:(id <CommandProtocol>)command {
    [_commandQueue addObject:command];
}

- (void)submmitOrder {
    for (id <CommandProtocol> command in _commandQueue) {
        [command execute];
    }
    [_commandQueue removeAllObjects];
}

- (void)cancleOrder:(id <CommandProtocol>)command {
    
}

@end
