//
//  ObjectStructure.h
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/10/17.
//  Copyright © 2017年 mali. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PersonProtocol.h"
#import "ActionProtocol.h"

@interface ObjectStructure : NSObject

- (void)add:(id <PersonProtocol>)person;
- (void)remove:(id <PersonProtocol>)person;
- (void)echo:(id <ActionProtocol>)action;

@end
