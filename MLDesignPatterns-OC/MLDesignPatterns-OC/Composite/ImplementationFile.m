//
//  ImplementationFile.m
//  MLDesignPatterns-OC
//
//  Created by MaLi on 2017/9/1.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "ImplementationFile.h"

@implementation ImplementationFile

- (void)displayWithHierarchy:(NSUInteger)hierarchy {
    NSMutableString *prefix = [[NSMutableString alloc] initWithString:@""];
    while (hierarchy--) {
        [prefix appendString:@"-"];
    }
	NSLog(@"%@实现文件:%@.m", prefix, self.name);
}

@end
