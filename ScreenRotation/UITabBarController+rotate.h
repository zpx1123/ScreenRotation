//
//  UITabBarController+rotate.h
//  WuDaoForOrganiza
//
//  Created by 周鹏翔 on 16/2/16.
//  Copyright © 2016年 周鹏翔. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITabBarController (rotate)
- (BOOL)shouldAutorotate;

- (NSUInteger)supportedInterfaceOrientations;


- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation;

@end
