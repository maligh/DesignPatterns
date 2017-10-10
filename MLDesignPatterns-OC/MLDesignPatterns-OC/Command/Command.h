//
//  Command.h
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/10/10.
//  Copyright © 2017年 mali. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandProtocol.h"
#import "Cook.h"

@interface Command : NSObject<CommandProtocol>

@property (nonatomic, strong, readonly) Cook *cook;

- (instancetype)initWithReceiver:(Cook *)cook;

@end
