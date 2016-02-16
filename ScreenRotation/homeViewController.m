//
//  homeViewController.m
//  dddddddd
//
//  Created by 周鹏翔 on 15/8/7.
//  Copyright (c) 2015年 周鹏翔. All rights reserved.
//

#import "homeViewController.h"
#import "backViewController.h"



@implementation homeViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel * la=[[UILabel alloc]initWithFrame:CGRectMake(100, 100, 100, 30)];
    la.backgroundColor=[UIColor redColor];
    la.text=@"进入子页面";
    [self.view addSubview:la];
    
    UITapGestureRecognizer * tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(ontap)];
    [la addGestureRecognizer:tap];
    [la setUserInteractionEnabled:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)ontap{
    
    backViewController * viewc=[[backViewController alloc]init];
    viewc.view.backgroundColor=[UIColor grayColor];
    viewc.hidesBottomBarWhenPushed=YES;
    [self.navigationController pushViewController:viewc animated:YES];
    
 
    
    
}


@end
