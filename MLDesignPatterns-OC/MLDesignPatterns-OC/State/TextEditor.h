//
//  TextEditor.h
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/10/17.
//  Copyright © 2017年 mali. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DrawProtocol.h"

@interface TextEditor : NSObject

@property (nonatomic, strong) id <DrawProtocol> state;

- (instancetype)initWithState:(id <DrawProtocol>)state;

- (void)echo:(NSString *)content;



@end
