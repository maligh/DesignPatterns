//
//  Folder.m
//  MLDesignPatterns-OC
//
//  Created by MaLi on 2017/9/1.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "Folder.h"

@interface Folder ()

@end

@implementation Folder

- (instancetype)initWithName:(NSString *)name {
    if (self = [super init]) {
        _name = name;
        _filesArray = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)displayWithHierarchy:(NSUInteger)hierarchy {
    NSInteger temp = hierarchy;
    hierarchy++;
    NSMutableString *prefix = [[NSMutableString alloc] initWithString:@""];
    while (temp--) {
        [prefix appendString:@"-"];
    }
    NSLog(@"%@目录:%@", prefix, self.name);
    for (NSInteger i = 0; i < _filesArray.count; i++) {
        [_filesArray[i] displayWithHierarchy:hierarchy];
    }
}

- (void)addFile:(id <FileSystem>)file {
    [_filesArray addObject:file];
}


@end
