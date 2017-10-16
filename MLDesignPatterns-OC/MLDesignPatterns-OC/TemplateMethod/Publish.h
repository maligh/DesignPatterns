//
//  Publish.h
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/10/17.
//  Copyright © 2017年 mali. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PublishProtocol.h"

@interface Publish : NSObject<PublishProtocol>

- (void)publish;

@end
