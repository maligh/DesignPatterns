//
//  Editor.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/10/16.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "Editor.h"
#import "EditorMemento.h"

@interface Editor()

@property (nonatomic, strong) NSMutableArray *array;
@property (nonatomic, strong) EditorMemento *memento;

@end

@implementation Editor

- (instancetype)init {
    if (self = [super init]) {
        _array = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)insertContent:(NSString *)string {
    [_array addObject:string];
}

- (EditorMemento *)save {
    return [[EditorMemento alloc] initWithArray:[_array copy]];
}

- (void)echo {
    for (NSString *string in _array) {
        NSLog(@"%@", string);
    }
}

- (void)restore:(EditorMemento *)memento {
    _array = [[NSMutableArray alloc] initWithArray:memento.array];
}

- (EditorMemento *)memento {
    if (!_memento) {
        _memento = [[EditorMemento alloc] initWithArray:[_array copy]];
    }
    return _memento;
}

@end
