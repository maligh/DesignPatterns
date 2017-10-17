//
//  TextEditor.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/10/17.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "TextEditor.h"

@implementation TextEditor

- (instancetype)initWithState:(id)state {
    if (self = [super init]) {
        self.state = state;
    }
    return self;
}

- (void)echo:(NSString *)content {
    [self.state drawContent:content];
}


@end
