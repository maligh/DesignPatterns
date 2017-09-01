//
//  HeaderFile.m
//  MLDesignPatterns-OC
//
//  Created by MaLi on 2017/9/1.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "HeaderFile.h"

@implementation HeaderFile

- (void)displayWithHierarchy:(NSUInteger)hierarchy {
    
    NSMutableString *prefix = [[NSMutableString alloc] initWithString:@""];
    while (hierarchy--) {
        [prefix appendString:@"-"];
    }
    NSLog(@"%@头文件:%@.h", prefix, self.name);
}

@end
