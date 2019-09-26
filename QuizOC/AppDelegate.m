//
//  AppDelegate.m
//  QuizOC
//
//  Created by 杨俊艺 on 2019/9/24.
//  Copyright © 2019 杨俊艺. All rights reserved.
//

#import "AppDelegate.h"
#import "BNRQuizViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //为了在屏幕显示用户界面,必须将视图控制器和应用中的另一个控制器关联AppDelegate
    //应用程序委托是每个应用都必须的入口点,应用程序委托负责管理UIWindow对象,UIWindow对象表示应用的唯一主窗口,为了在屏幕上显示BNRQuizViewController,需要将其设置为UIWindow对象的根视图控制器
    //当用户看到应用程序界面之前,应用程序委托会收到application didFinishLaunchingWithOptions:,我们可以在这条消息中添加初始化代码
    BNRQuizViewController *quizVC = [[BNRQuizViewController alloc] init];
    self.window.rootViewController = quizVC;
    //现在应用程序启动完毕会创建BNRQuizViewController对象,加载由BNRQuizViewController.xib编译而来的NIB文件
    //init方法是通过initWithNibName: bundle:方法加载NIB文件的,然后设置BNRQuizViewController对象为UIWindow的根视图控制器
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
