//
//  Company.h
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/8/11.
//  Copyright © 2017年 mali. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 公司类
 */
@interface Company : NSObject<NSCopying>

@property (nonatomic, strong) NSString *name;             ///< 公司名字
@property (nonatomic, strong) NSString *establishmentTime;///< 成立时间
@property (nonatomic, strong) NSString *level;            ///< 规模

- (instancetype)initWithName:(NSString *)name establishmentTime:(NSString *)establishmentTime level:(NSString *)level;

@end
