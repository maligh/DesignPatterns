//
//  CommandProtocol.h
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/10/10.
//  Copyright © 2017年 mali. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CommandProtocol <NSObject>

@required
/**
 执行指令
 */
- (void)execute;


@end
