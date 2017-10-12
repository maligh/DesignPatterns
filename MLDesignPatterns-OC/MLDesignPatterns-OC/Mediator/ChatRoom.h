//
//  ChatRoom.h
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/10/12.
//  Copyright © 2017年 mali. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MediatorProtocol.h"

@interface ChatRoom : NSObject<MediatorProtocol>

- (void)showMessage:(NSString *)message userName:(NSString *)name;

@end
