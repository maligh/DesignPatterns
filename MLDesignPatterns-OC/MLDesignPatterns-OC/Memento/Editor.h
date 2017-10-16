//
//  Editor.h
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/10/16.
//  Copyright © 2017年 mali. All rights reserved.
//

#import <Foundation/Foundation.h>

@class EditorMemento;
@interface Editor : NSObject

- (void)insertContent:(NSString *)string;
- (EditorMemento *)save;
- (void)echo;
- (void)restore:(EditorMemento *)memento;

@end
