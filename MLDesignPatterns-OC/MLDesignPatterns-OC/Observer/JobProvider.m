//
//  Subject.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/10/13.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "Subject.h"

@interface Subject()

@property (nonatomic, strong) NSMutableArray *observers;

@end

@implementation Subject

- (void)addObserver:(NSObject *)observer {
    [self.observers addObject:observer];
}
- (void)removeObserver:(NSObject *)observer {
    [self.observers removeObject:observer];
}
- (void)notify {
    for (id <ObserverProtocol> observer in self.observers) {
        [observer update];
    }
}

- (NSMutableArray *)observers {
    if (!_observers) {
        _observers = [[NSMutableArray alloc] init];
    }
    return _observers;
}

@end
