//
//  TicketOutlets.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/9/5.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "TicketOutlets.h"
#import "TrainStation.h"

@interface TicketOutlets()

@property (nonatomic, strong) TrainStation *trainStain;

@end

@implementation TicketOutlets

- (instancetype)init {
    if (self = [super init]) {
        _trainStain = [[TrainStation alloc] init];
    }
    return self;
}

- (void)sell {
    NSLog(@"收取代售手续费5元");
    [_trainStain sell];
}

@end
