//
//  FlyweightFactory.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/9/5.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "FlyweightFactory.h"

@interface FlyweightFactory()

@property (nonatomic, strong) NSDictionary *circleDictionary;

@end

@implementation FlyweightFactory

- (instancetype)init {
    if (self = [super init]) {
        _circleDictionary = [[NSMutableDictionary alloc] init];
    }
    return self;
}

- (Circle *)createCircleWithColorString:(NSString *)colorString {
    Circle *circle = [_circleDictionary objectForKey:colorString];
    if (circle == nil) {
        circle = [[Circle alloc] initWithColorString:colorString];
        [_circleDictionary setValue:circle forKey:colorString];
    }
    return circle;
}

- (void)getCount {
    NSLog(@"一共创建了%ld个圆", _circleDictionary.count);
}


@end
