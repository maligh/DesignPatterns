//
//  main.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/8/10.
//  Copyright © 2017年 mali. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NuWa.h"
#import "Door.h"
#import "DoorInstaller.h"
#import "WoodDoorFactory.h"
#import "IronDoorFactory.h"
#import "Seller.h"
#import "FiveYuanNoSpicyBuild.h"
#import "TenYuanAbnormalSpicyBuild.h"
#import "Employee.h"
#import "Company.h"
#import "EmployeeDeepCopy.h"
#import "EmployeeShallowCopy.h"
#import "SpeakEnglish.h"
#import "Translator.h"
#import "MyModule.h"
#import "ChatModule.h"
#import "RedTheme.h"
#import "BlueTheme.h"
#import "Folder.h"
#import "HeaderFile.h"
#import "ImplementationFile.h"
#import "HouseManager.h"

void factoryMethod() {
    [NuWa someMagic];
}

void abstractFactory() {
    Door *woodDoor = [WoodDoorFactory createDoor];
    DoorInstaller *woodDoorInstaller = [WoodDoorFactory createDoorInstall];
    [woodDoor getDescription];
    [woodDoorInstaller getDescription];
    
    Door *ironDoor = [IronDoorFactory createDoor];
    DoorInstaller *ironDoorInstaller = [IronDoorFactory createDoorInstall];
    [ironDoor getDescription];
    [ironDoorInstaller getDescription];
}

void builder() {
    FiveYuanNoSpicyBuild *fiveBuilder = [[FiveYuanNoSpicyBuild alloc] init];
    TenYuanAbnormalSpicyBuild *tenBuilder = [[TenYuanAbnormalSpicyBuild alloc] init];
    Seller *aSeller = [[Seller alloc] init];
    aSeller.handWheatCakeBuilder = fiveBuilder;
    [aSeller cookFood];
    aSeller.handWheatCakeBuilder = tenBuilder;
    [aSeller cookFood];
}

void prototype() {
    Company *sina = [[Company alloc] initWithName:@"新浪" establishmentTime:@"2014-08-08" level:@"上市"];
    Company *alibaba = [[Company alloc] initWithName:@"阿里巴巴" establishmentTime:@"2008-08-08" level:@"上市"];
    EmployeeShallowCopy *zhangSan = [[EmployeeShallowCopy alloc] initWithName:@"张三" configWithAge:20 department:@"IT" company:sina];
    EmployeeDeepCopy *zhangsanDeep = [[EmployeeDeepCopy alloc] initWithName:@"张三deep" configWithAge:20 department:@"IT" company:alibaba];
    EmployeeShallowCopy *liSi = [zhangSan copy];
    sina.name = @"浪里个浪";
    NSLog(@"%@", liSi.company.name);
    EmployeeDeepCopy *wangWu = [zhangsanDeep copy];
    alibaba.name = @"新阿里巴巴";
    NSLog(@"%@", wangWu.company.name);
}

void adapter() {
    SpeakEnglish *SteveJobs = [[SpeakEnglish alloc] init];
    [SteveJobs englishSpeech];
    Translator *MrMaTranslator = [[Translator alloc] init];
    [MrMaTranslator englishSpeech];
}

void bridge() {
    RedTheme *red = [[RedTheme alloc] init];
    BlueTheme *blue = [[BlueTheme alloc] init];
    
    [MyModule moduleDescriptionWithTheme:red];
    [ChatModule moduleDescriptionWithTheme:blue];
}

void composite() {
    Folder *folder = [[Folder alloc] initWithName:@"MLDesignPatterns-OC"];
    Folder *compositefolder = [[Folder alloc] initWithName:@"Composite"];
    [folder addFile:compositefolder];
    ImplementationFile *mainFile = [[ImplementationFile alloc] initWithName:@"main"];
    [folder addFile:mainFile];
    HeaderFile *fileHeaderFile = [[HeaderFile alloc] initWithName:@"File"];
    ImplementationFile *fileImplementationFile = [[ImplementationFile alloc] initWithName:@"File"];
    HeaderFile *fileSystemHeaderFile = [[HeaderFile alloc] initWithName:@"FileSystem"];
    HeaderFile *folderHeaderFile = [[HeaderFile alloc] initWithName:@"Folder"];
    ImplementationFile *folderImplementationFile = [[ImplementationFile alloc] initWithName:@"Folder"];
    HeaderFile *headerFileHeaderFile = [[HeaderFile alloc] initWithName:@"HeaderFile"];
    ImplementationFile *headerFileImplementationFile = [[ImplementationFile alloc] initWithName:@"HeaderFile"];
    HeaderFile *implementationFileHeaderFile = [[HeaderFile alloc] initWithName:@"ImplementationFile"];
    ImplementationFile *implementationFileImplementationFile = [[ImplementationFile alloc] initWithName:@"ImplementationFile"];
    [compositefolder addFile:fileHeaderFile];
    [compositefolder addFile:fileImplementationFile];
    [compositefolder addFile:fileSystemHeaderFile];
    [compositefolder addFile:folderHeaderFile];
    [compositefolder addFile:folderImplementationFile];
    [compositefolder addFile:headerFileHeaderFile];
    [compositefolder addFile:headerFileImplementationFile];
    [compositefolder addFile:implementationFileHeaderFile];
    [compositefolder addFile:implementationFileImplementationFile];
    [folder displayWithHierarchy:0];
}

void facede() {
    HouseManager *manager = [[HouseManager alloc] init];
    NSLog(@"--------------- 准备睡觉了 ---------------");
    [manager sleep];
    NSLog(@"--------------- 准备起床了 ---------------");
    [manager getUp];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        factoryMethod();
//        abstractFactory();
//        builder();
//        prototype();
//        adapter();
//        bridge();
//        composite();
//        facede();
    }
    return 0;
}


