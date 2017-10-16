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
#import "ChickenBurger.h"
#import "Chilli.h"
#import "Egg.h"
#import "FlyweightFactory.h"
#import "Circle.h"
#import "TicketOutlets.h"
#import "CEO.h"
#import "CTO.h"
#import "PM.h"
#import "Waiter.h"
#import "Cook.h"
#import "LobsterCommand.h"
#import "AbaloneCommand.h"
#import "User.h"
#import "ChatRoom.h"
#import "JobProvider.h"
#import "JobHunter.h"
#import "EditorMemento.h"
#import "Editor.h"

#warning 调用部分请见main方法

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

void decorator() {
    ChickenBurger *chickenBurger = [[ChickenBurger alloc] init];
    NSLog(@"%@-花费：%ld", [chickenBurger getDescription], [chickenBurger getCost]);
    Chilli *chilliBurger = [[Chilli alloc] initWithChickenBurger:chickenBurger];
    NSLog(@"%@-花费：%ld", [chilliBurger getDescription], [chilliBurger getCost]);
    Egg *eggBurger = [[Egg alloc] initWithChickenBurger:chickenBurger];
    NSLog(@"%@-花费：%ld", [eggBurger getDescription], [eggBurger getCost]);
    Egg *eggChilliBurger = [[Egg alloc] initWithChickenBurger:chilliBurger];
    NSLog(@"%@-花费：%ld", [eggChilliBurger getDescription], [eggChilliBurger getCost]);
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

void flyWeight() {
    FlyweightFactory *factory = [[FlyweightFactory alloc] init];
    Circle *redCircle1 = [factory createCircleWithColorString:@"红色"];
    Circle *redCircle2 = [factory createCircleWithColorString:@"红色"];
    Circle *blueCircle1 = [factory createCircleWithColorString:@"蓝色"];
    Circle *blueCircle2 = [factory createCircleWithColorString:@"蓝色"];
    Circle *redCircle3 = [factory createCircleWithColorString:@"红色"];
    [redCircle1 draw];
    [redCircle2 draw];
    [blueCircle1 draw];
    [blueCircle2 draw];
    [redCircle3 draw];
    [factory getCount];
}

void proxy() {
    TicketOutlets *ticketOutlets = [[TicketOutlets alloc] init];
    [ticketOutlets sell];
}

void chainOfResponsibility() {
    CEO *ceo = [[CEO alloc] init];
    CTO *cto = [[CTO alloc] init];
    PM *pm = [[PM alloc] init];
    pm.superior = cto;
    cto.superior = ceo;
    
    NSArray *leaveApplicationArray = @[@"1", @"16", @"25", @"31"];
    for (NSString *string in leaveApplicationArray) {
        [pm handleLeaveApplication:[string integerValue]];
    }
}

void command() {
    Waiter *waiter = [[Waiter alloc] init];
    Cook *stephenChow = [[Cook alloc] init];
    LobsterCommand *lobsterCommand = [[LobsterCommand alloc] initWithReceiver:stephenChow];
    AbaloneCommand *abaloneCommand = [[AbaloneCommand alloc] initWithReceiver:stephenChow];
    
    [waiter addOrder:lobsterCommand];
    [waiter addOrder:abaloneCommand];
    [waiter submmitOrder];
    [waiter cancleOrder:lobsterCommand];
}

void mediator() {
    ChatRoom *room = [[ChatRoom alloc] init];
    User *wuJun = [[User alloc] initWithName:@"吴军" room:room];
    User *me = [[User alloc] initWithName:@"SuperMario" room:room];
    [wuJun sendMessage:@"来自硅谷的第一封信"];
    [me sendMessage:@"谢谢，不做伪工作者"];
}

void observer() {
    JobHunter *zhangSan = [[JobHunter alloc] initWithName:@"张三"];
    JobHunter *liSi = [[JobHunter alloc] initWithName:@"李四"];
    JobProvider *jobProvider = [[JobProvider alloc] init];
    [jobProvider addObserver:zhangSan];
    [jobProvider addObserver:liSi];
    [jobProvider notify];
}

void memento() {
    Editor *editor = [[Editor alloc] init];
    [editor insertContent:@"总熬夜会带来三个问题"];
    [editor insertContent:@"第一:记忆力会明显下降"];
    [editor insertContent:@"第二:数数经常会数错"];
    EditorMemento *memento = [editor save];
    [editor insertContent:@"第四:记忆力会明显下降"];
    [editor echo];
    NSLog(@"//------------------------------------");
    [editor restore:memento];
    [editor echo];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        factoryMethod();
//        abstractFactory();
//        builder();
//        prototype();
//        adapter();
//        bridge();
//        decorator();
//        composite();
//        facede();
//        flyWeight();
//        proxy();
//        chainOfResponsibility();
//        command();
//        mediator();
//        observer();
        memento();
    }
    return 0;
}


