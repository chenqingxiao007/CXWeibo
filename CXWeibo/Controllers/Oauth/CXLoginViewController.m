//
//  CXLoginViewController.m
//  CXWeibo
//
//  Created by 陈擎霄 on 15/12/16.
//  Copyright © 2015年 chenqingxiao007. All rights reserved.
//

#import "CXLoginViewController.h"

@interface CXLoginViewController ()

@end

@implementation CXLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"登录";
    self.view.backgroundColor = [UIColor yellowColor];
    //取消按钮的位置
    UIBarButtonItem *cancelBtn = [[UIBarButtonItem alloc] initWithTitle:@"取消" style:UIBarButtonItemStylePlain target:self action:@selector(cancel)];
    self.navigationItem.rightBarButtonItem = cancelBtn;
}

- (void)cancel{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}


@end
