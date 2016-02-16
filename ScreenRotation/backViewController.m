//
//  backViewController.m
//  dddddddd
//
//  Created by 周鹏翔 on 15/8/11.
//  Copyright (c) 2015年 周鹏翔. All rights reserved.
//

#import "backViewController.h"
#import "UIViewController+rotate.h"
#define degreesToRadian(x) (M_PI * (x) / 180.0)
@interface backViewController(){
    UILabel * la;
    UILabel * la2;
    UIView * videoView;
    
}

@end
@implementation backViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UILabel * la1=[[UILabel alloc]initWithFrame:CGRectMake(0, 264, 320, 320*9/16)];
    la1.backgroundColor=[UIColor redColor];

    la1.text=@"内容页面";
    la1.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:la1];
    
    
    videoView=[[UIView alloc]initWithFrame:CGRectMake(0, 64, 320, 320*9/16)];
    videoView.backgroundColor=[UIColor whiteColor];
    
    
    la=[[UILabel alloc]initWithFrame:CGRectMake(0, 64, 100, 50)];
    la.backgroundColor=[UIColor blueColor];
    la.text=@"播放";
    la.textAlignment=NSTextAlignmentCenter;
    [videoView addSubview:la];
    [self.view addSubview:videoView];
    
    
    la2=[[UILabel alloc]initWithFrame:CGRectMake(250, 64, 100, 50)];
    la2.backgroundColor=[UIColor blueColor];
    la2.text=@"返回";
    la2.textAlignment=NSTextAlignmentCenter;
    [videoView addSubview:la2];
    [self.view addSubview:videoView];
    
    self.navigationController.navigationBarHidden=YES;

    
    
    UITapGestureRecognizer * tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(back1:)];
    [la addGestureRecognizer:tap];
    [la setUserInteractionEnabled:YES];

    UITapGestureRecognizer * tap1=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(back2:)];
    [la2 addGestureRecognizer:tap1];
    [la2 setUserInteractionEnabled:YES];
    
    la2.hidden=YES;
    
}
-(void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
                                        duration:(NSTimeInterval)duration
{
//    在这里重新布局
    NSLog(@"willAnimateRotation");
    
//    if ([UIDevice currentDevice].orientation == UIInterfaceOrientationPortrait){
//        
//        
//        CGAffineTransform landscapeTransform = CGAffineTransformMakeRotation(degreesToRadian(0));
//        landscapeTransform = CGAffineTransformTranslate (landscapeTransform, 0.0, 0.0);
//        
//        self.view.bounds = CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y, 320, 480);
//        
//        [self.view setTransform:landscapeTransform];
//        
//        
//    } else if ([UIDevice currentDevice].orientation == UIInterfaceOrientationPortraitUpsideDown){
//        
//        
//        CGAffineTransform landscapeTransform = CGAffineTransformMakeRotation(degreesToRadian(180));
//        landscapeTransform = CGAffineTransformTranslate (landscapeTransform, 0.0, 0.0);
//        
//        self.view.bounds = CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y, 320, 480);
//        
//        [self.view setTransform:landscapeTransform];
//        
//    } else if ([UIDevice currentDevice].orientation == UIInterfaceOrientationLandscapeRight){
//        
//        CGAffineTransform landscapeTransform = CGAffineTransformMakeRotation(degreesToRadian(90));
//        
//        landscapeTransform = CGAffineTransformTranslate (landscapeTransform, 0.0, 0.0);
//        self.view.bounds = CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y, 480, 320);
//        
//        
//        [self.view setTransform:landscapeTransform];
//        
//    }else if ([UIDevice currentDevice].orientation == UIInterfaceOrientationLandscapeLeft){
//        
//        CGAffineTransform landscapeTransform = CGAffineTransformMakeRotation(degreesToRadian(270));
//        
//        landscapeTransform = CGAffineTransformTranslate (landscapeTransform, 0.0, 0.0);
//        self.view.bounds = CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y, 480, 320);
//        
//        [self.view setTransform:landscapeTransform];
//    }

    
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}


-(void)back1:(UITapGestureRecognizer *)tap{
    
//    if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
//        
//        [[UIDevice currentDevice] setValue:[NSNumber numberWithInteger:UIDeviceOrientationPortrait] forKey:@"orientation"];
//        
//        [[UIDevice currentDevice] setValue:[NSNumber numberWithInteger:UIDeviceOrientationLandscapeRight] forKey:@"orientation"];
//    }
    

    
//    if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
//        SEL selector = NSSelectorFromString(@"setOrientation:");
//        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[UIDevice instanceMethodSignatureForSelector:selector]];
//        [invocation setSelector:selector];
//        [invocation setTarget:[UIDevice currentDevice]];
//        int val = UIInterfaceOrientationLandscapeRight;
//        [invocation setArgument:&val atIndex:2];
//        [invocation invoke];
//    }
    
    la.hidden=YES;
    la2.hidden=NO;
    // 状态栏动画持续时间
    CGFloat duration = [UIApplication sharedApplication].statusBarOrientationAnimationDuration;
    [UIView animateWithDuration:duration animations:^{
        // 修改状态栏的方向及view的方向进而强制旋转屏幕
        [[UIApplication sharedApplication] setStatusBarOrientation:UIInterfaceOrientationLandscapeRight];
//        videoView.transform =CGAffineTransformMakeRotation(M_PI_2);
        
        CGAffineTransform landscapeTransform = CGAffineTransformMakeRotation(degreesToRadian(90));
        landscapeTransform = CGAffineTransformTranslate (landscapeTransform, 0.0, 0.0);
        videoView.transform =landscapeTransform;
        
        CGRect frame = videoView.frame;
        frame.size = self.view.frame.size;
        videoView.frame = frame;
        videoView.center=self.view.center;
        
    }];
    
    
    
    
    
}

-(void)back2:(UITapGestureRecognizer *)tap{

    la.hidden=NO;
    la2.hidden=YES;
    // 状态栏动画持续时间
    CGFloat duration = [UIApplication sharedApplication].statusBarOrientationAnimationDuration;
    [UIView animateWithDuration:duration animations:^{
        // 修改状态栏的方向及view的方向进而强制旋转屏幕
        [[UIApplication sharedApplication] setStatusBarOrientation:UIInterfaceOrientationLandscapeRight];
        
        CGAffineTransform landscapeTransform = CGAffineTransformMakeRotation(degreesToRadian(0));
        landscapeTransform = CGAffineTransformTranslate (landscapeTransform, 0.0, 0.0);
        videoView.transform =landscapeTransform;

        videoView.frame = CGRectMake(0, 64, 320, 320*9/16);

        
    }];
    
}
- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
            return UIInterfaceOrientationMaskPortrait | UIInterfaceOrientationMaskLandscapeLeft | UIInterfaceOrientationMaskLandscapeRight;

}
-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    
    return UIInterfaceOrientationPortrait;
}
@end
