//
//  AppDelegate.m
//  dddddddd
//
//  Created by 周鹏翔 on 15/8/7.
//  Copyright (c) 2015年 周鹏翔. All rights reserved.
//

#import "AppDelegate.h"
#import "homeViewController.h"



@interface AppDelegate (){
    
    
    UITabBarController * tabBar;
}


@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window=[[UIWindow alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
    
    
    
    
    //    homeViewController * viewcon=[[homeViewController alloc]init];
    //    viewcon.view.backgroundColor=[UIColor whiteColor];
    //    UINavigationController * nav=[[UINavigationController alloc]initWithRootViewController:viewcon];
    
    
    tabBar=[[UITabBarController alloc]init];
    
    homeViewController * viewC=[[homeViewController alloc]init];
    viewC.view.backgroundColor=[UIColor grayColor];
    UIViewController * viewC1=[[UIViewController alloc]init];
    viewC1.view.backgroundColor=[UIColor blueColor];
    UIViewController * viewC2=[[UIViewController alloc]init];
    viewC2.view.backgroundColor=[UIColor redColor];
    UIViewController * viewC3=[[UIViewController alloc]init];
    viewC3.view.backgroundColor=[UIColor yellowColor];
    
    [self addTabBar:viewC title:@"首页" image:[UIImage imageNamed:@"tabbar_homepage"] selecedImage:[UIImage imageNamed:@"tabbar_homepage_highlighted"] badgeValue:nil];
    [self addTabBar:viewC1 title:@"招聘" image: [UIImage imageNamed:@"tabbar_jop"] selecedImage:[UIImage imageNamed:@"tabbar_jop_highlighted"] badgeValue:nil];
    [self addTabBar:viewC2 title:@"报表" image:[UIImage imageNamed:@"tabbar_reportcar"] selecedImage:[UIImage imageNamed:@"tabbar_reportcar_highlighted"] badgeValue:nil];
    [self addTabBar:viewC3 title:@"我" image:[UIImage imageNamed:@"tabbar_my"] selecedImage:[UIImage imageNamed:@"tabbar_my_highlighted"] badgeValue:nil];
    
    
    self.window.rootViewController=tabBar;
    
    
    [self.window makeKeyAndVisible];
    return YES;
    
}
-(void)addTabBar:(UIViewController *)viewController title:(NSString * )title image:(UIImage *)image selecedImage:(UIImage *)selecedImage badgeValue:(NSString *)value{
    
    
    
    
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    selecedImage = [selecedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //    viewController.tabBarItem.title=title;
    viewController.title=title;
    viewController.tabBarItem.image=image;
    
    viewController.tabBarItem.selectedImage=selecedImage;
    viewController.tabBarItem.badgeValue=value;
    
    UINavigationController * nav=[[UINavigationController alloc]initWithRootViewController:viewController];
    [nav shouldAutorotate];
    [nav supportedInterfaceOrientations];
    [nav preferredInterfaceOrientationForPresentation];
    
    
    [tabBar addChildViewController:nav];
    
    
    
}
- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
