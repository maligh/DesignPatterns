//
//  Command.h
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/10/10.
//  Copyright © 2017年 mali. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandProtocol.h"

@class Cook;
@interface Command : NSObject<CommandProtocol>

@property (nonatomic, strong, readonly) Cook *cook;

- (void)initWithReceiver:(Cook *)cook;

@end
