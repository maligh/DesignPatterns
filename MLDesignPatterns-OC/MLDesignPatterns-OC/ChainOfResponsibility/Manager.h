//
//  Manager.h
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/9/7.
//  Copyright © 2017年 mali. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Leave.h"

@interface Manager : NSObject<Leave>

@property (nonatomic, strong) id<Leave> superior;

@end
