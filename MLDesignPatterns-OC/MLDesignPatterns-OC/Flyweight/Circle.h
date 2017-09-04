//
//  Circle.h
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/9/5.
//  Copyright © 2017年 mali. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"

@interface Circle : NSObject<Shape>

- (instancetype)initWithColorString:(NSString *)colorString;

@end
