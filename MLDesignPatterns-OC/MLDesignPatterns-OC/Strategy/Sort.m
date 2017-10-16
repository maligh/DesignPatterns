//
//  Sort.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/10/16.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "Sort.h"
#import "BubbleSortStrategy.h"
#import "QuickSortStrategy.h"

@implementation Sort

+ (void)sort:(NSArray *)array {
    if (array.count > 5) {
        [QuickSortStrategy sort:array];
    } else {
        [BubbleSortStrategy sort:array];
    }
}

@end
