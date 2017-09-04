//
//  FlyweightFactory.h
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/9/5.
//  Copyright © 2017年 mali. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Circle.h"

@interface FlyweightFactory : NSObject

- (Circle *)createCircleWithColorString:(NSString *)colorString;

- (void)getCount;

@end
