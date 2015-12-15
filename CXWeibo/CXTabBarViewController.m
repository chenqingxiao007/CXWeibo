//
//  CXTabBarViewController.m
//  CXWeibo
//
//  Created by 陈擎霄 on 15/12/15.
//  Copyright © 2015年 chenqingxiao007. All rights reserved.
//

#import "CXTabBarViewController.h"

@interface CXTabBarViewController ()

@end

@implementation CXTabBarViewController


- (instancetype)init{

    if (self = [super init]) {
        //b.创建子控制器
             UIViewController *c1=[[UIViewController alloc]init];
             c1.view.backgroundColor=[UIColor grayColor];
             c1.view.backgroundColor=[UIColor greenColor];
             c1.tabBarItem.title=@"主页";
             c1.tabBarItem.image=[UIImage imageNamed:@"tab_recent_nor"];
             c1.tabBarItem.badgeValue=@"123";
        
             UIViewController *c2=[[UIViewController alloc]init];
             c2.view.backgroundColor=[UIColor brownColor];
             c2.tabBarItem.title=@"消息";
             c2.tabBarItem.image=[UIImage imageNamed:@"tab_buddy_nor"];
        
             UIViewController *c3=[[UIViewController alloc]init];
             c3.tabBarItem.title=@"搜索";
             c3.tabBarItem.image=[UIImage imageNamed:@"tab_qworld_nor"];
        
             UIViewController *c4=[[UIViewController alloc]init];
             c4.tabBarItem.title=@"个人";
             c4.tabBarItem.image=[UIImage imageNamed:@"tab_me_nor"];
             
             //c.2第二种方式
             self.viewControllers=@[c1,c2,c3,c4];
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
