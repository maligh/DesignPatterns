//
//  EditorMemento.h
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/10/16.
//  Copyright © 2017年 mali. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EditorMemento : NSObject

@property (nonatomic, copy, readonly) NSArray *array;
- (instancetype)initWithArray:(NSArray *)array;

@end
