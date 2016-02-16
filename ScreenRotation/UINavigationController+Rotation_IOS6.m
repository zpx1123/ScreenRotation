//
//  UINavigationController+Rotation_IOS6.m
//  dddddddd
//
//  Created by 周鹏翔 on 15/8/7.
//  Copyright (c) 2015年 周鹏翔. All rights reserved.
//

#import "UINavigationController+Rotation_IOS6.h"

@implementation UINavigationController (Rotation_IOS6)
-(BOOL)shouldAutorotate {
    
    return  [self.topViewController shouldAutorotate];
    
}

-(NSUInteger)supportedInterfaceOrientations {

    return  [self.topViewController supportedInterfaceOrientations];
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {

    return  [self.topViewController preferredInterfaceOrientationForPresentation];
}
@end
