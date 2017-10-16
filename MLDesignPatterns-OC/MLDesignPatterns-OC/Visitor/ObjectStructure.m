//
//  ObjectStructure.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/10/17.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "ObjectStructure.h"

@interface ObjectStructure()

@property (nonatomic, strong) NSMutableArray <PersonProtocol> *array;

@end

@implementation ObjectStructure

- (instancetype)init {
    if (self = [super init]) {
        _array = [[NSMutableArray <PersonProtocol> alloc] init];
    }
    return self;
}

- (void)add:(id <PersonProtocol>)person {
    [_array addObject:person];
}

- (void)remove:(id <PersonProtocol>)person {
    [_array removeObject:person];
}

- (void)echo:(id <ActionProtocol>)action {
    for (id <PersonProtocol>person in _array) {
        [person accept:action];
    }
}

@end
