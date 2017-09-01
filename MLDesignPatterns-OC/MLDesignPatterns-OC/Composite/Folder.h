//
//  Folder.h
//  MLDesignPatterns-OC
//
//  Created by MaLi on 2017/9/1.
//  Copyright © 2017年 mali. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FileSystem.h"

@interface Folder : NSObject<FileSystem>

@property (nonatomic, copy, readonly) NSString *name;
@property (nonatomic, strong, readonly) NSMutableArray *filesArray;

- (instancetype)initWithName:(NSString *)name;
- (void)addFile:(id <FileSystem>)file;

@end
