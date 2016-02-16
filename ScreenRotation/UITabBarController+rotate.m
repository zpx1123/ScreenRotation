//
//  UITabBarController+rotate.m
//  WuDaoForOrganiza
//
//  Created by 周鹏翔 on 16/2/16.
//  Copyright © 2016年 周鹏翔. All rights reserved.
//

#import "UITabBarController+rotate.h"

@implementation UITabBarController (rotate)
- (BOOL)shouldAutorotate
{
    return [self.selectedViewController shouldAutorotate];
}

- (NSUInteger)supportedInterfaceOrientations
{
    return [self.selectedViewController supportedInterfaceOrientations];
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return [self.selectedViewController preferredInterfaceOrientationForPresentation];
}

@end
