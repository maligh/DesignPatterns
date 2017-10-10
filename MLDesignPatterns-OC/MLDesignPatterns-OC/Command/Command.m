//
//  Command.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/10/10.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "Command.h"

@implementation Command

- (void)execute {
}

- (void)initWithReceiver:(Cook *)cook {
    if (self = [super init]) {
        _cook = cook;
    }
}

@end
