//
//  Circle.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/9/5.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "Circle.h"

@interface Circle()

@property (nonatomic, copy) NSString *colorString;

@end

@implementation Circle

- (instancetype)initWithColorString:(NSString *)colorString {
    if (self = [super init]) {
        _colorString = colorString;
    }
    return self;
}

- (void)draw {
    NSLog(@"画了一个%@的圆形", _colorString);
}

@end
