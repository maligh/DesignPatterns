//
//  JobHunter.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/10/13.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "JobHunter.h"

@interface JobHunter()

@property (nonatomic, copy) NSString *name;

@end

@implementation JobHunter

- (instancetype)initWithName:(NSString *)name {
    if (self = [super init]) {
        _name = name;
    }
    return self;
}


- (void)update {
    NSLog(@"%@:有一个新的职位更新啦",_name);
}

@end
