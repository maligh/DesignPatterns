//
//  EditorMemento.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/10/16.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "EditorMemento.h"

@implementation EditorMemento

- (instancetype)initWithArray:(NSArray *)array {
    if (self = [super init]) {
        _array = array;
    }
    return self;
}

@end
