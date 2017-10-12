//
//  SubjectProtocol.h
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/10/13.
//  Copyright © 2017年 mali. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObserverProtocol.h"

@protocol SubjectProtocol <NSObject>

- (void)addObserver:(id <ObserverProtocol>)observer;
- (void)removeObserver:(id <ObserverProtocol>)observer;
- (void)notify;

@end
