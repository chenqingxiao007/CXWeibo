//
//  CXHomeViewController.m
//  CXWeibo
//
//  Created by 陈擎霄 on 15/12/15.
//  Copyright © 2015年 chenqingxiao007. All rights reserved.
//

#import "CXHomeViewController.h"
#import "CXAccountTool.h"
#import "CXNetManager.h"
#import "CXAccount.h"
#import "CXProgressHUD.h"

@interface CXHomeViewController ()

@end

@implementation CXHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.title = @"首页";
    
    [self getUserInfo];
    
}

- (void)getUserInfo{
// https://api.weibo.com/2/users/show.json
    
    CXAccount *account = [CXAccountTool shareAccountTool].account;
    NSDictionary *params = @{
                             @"access_token" : account.access_token,
                             @"uid" :account.uid
                             };
    

    [CXNetManager getWithUrl:@"https://api.weibo.com/2/users/show.json" params:params success:^(id responseObject) {

        // 设置标题
        NSString *title = [NSString stringWithFormat:@"%@的微博",[responseObject valueForKey:@"name"]];
        self.title = title;
        [CXProgressHUD showMessage:[responseObject valueForKey:@"description"] durationTime:1.2 completionBlock:^{
            
        } inView:self.view];
        
        
    } failure:^(NSError *error) {
        
        NSLog(@"%@",error);
    }];
    
}

@end









