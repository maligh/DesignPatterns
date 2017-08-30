//
//  Module.h
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/8/30.
//  Copyright © 2017年 mali. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "App.h"

@class Theme;
@interface Module : NSObject<App>

+ (void)moduleDescriptionWithTheme:(Theme *)theme;

@end
