//
//  File.h
//  MLDesignPatterns-OC
//
//  Created by MaLi on 2017/9/1.
//  Copyright © 2017年 mali. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FileSystem.h"

@interface File : NSObject<FileSystem>

@property (nonatomic, copy, readonly) NSString *name;

- (instancetype)initWithName:(NSString *)name;

@end
