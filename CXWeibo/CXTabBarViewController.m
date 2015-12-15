//
//  CXTabBarViewController.m
//  CXWeibo
//
//  Created by 陈擎霄 on 15/12/15.
//  Copyright © 2015年 chenqingxiao007. All rights reserved.
//

#import "CXTabBarViewController.h"
#import "CXNavigationController.h"

@interface CXTabBarViewController ()

@end

@implementation CXTabBarViewController


- (instancetype)init{

    if (self = [super init]) {
     
        //装配控制器
        [self setupChildViewControllers];
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)setupChildViewControllers{
    
    // 1.首页
    UIViewController *homeVC = [[UIViewController alloc] init];
    CXNavigationController *nav1 = [[CXNavigationController alloc] initWithRootViewController:homeVC];
    nav1.tabBarItem.title = @"主页";
    nav1.tabBarItem.badgeValue = @"主页";
    [self addChildViewController:nav1];
    
    // 2.消息
    UIViewController *messageVC = [[UIViewController alloc] init];
    CXNavigationController *nav2 = [[CXNavigationController alloc] initWithRootViewController:messageVC];
    nav2.tabBarItem.title = @"消息";
    [self addChildViewController:nav2];
    
    // 3.搜索
    UIViewController *searchVC = [[UIViewController alloc] init];
    CXNavigationController *nav3 = [[CXNavigationController alloc] initWithRootViewController:searchVC];
    nav3.tabBarItem.title = @"搜索";
    [self addChildViewController:nav3];
    
    // 4.消息
    UIViewController *personVC = [[UIViewController alloc] init];
    CXNavigationController *nav4 = [[CXNavigationController alloc] initWithRootViewController:personVC];
    nav4.tabBarItem.title = @"个人";
    [self addChildViewController:nav4];
    
}



@end

























