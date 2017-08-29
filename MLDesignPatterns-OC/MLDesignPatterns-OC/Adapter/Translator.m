//
//  Translator.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/8/29.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "Translator.h"
#import "SpeakChinese.h"

@implementation Translator

- (void)englishSpeech {
    SpeakChinese *MrMa = [[SpeakChinese alloc] init];
    [MrMa chineseSpeech];
}

@end
