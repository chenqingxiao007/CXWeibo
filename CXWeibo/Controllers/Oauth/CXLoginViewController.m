//
//  CXLoginViewController.m
//  CXWeibo
//
//  Created by 陈擎霄 on 15/12/16.
//  Copyright © 2015年 chenqingxiao007. All rights reserved.
//

#import "CXLoginViewController.h"
#import "CXProgressHUD.h"

@interface CXLoginViewController ()<UIWebViewDelegate>

@end

@implementation CXLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createUI];
    [self loadLoginView];
    
}

- (void)createUI{
    self.title = @"登录";
    self.view.backgroundColor = [UIColor yellowColor];
    //取消按钮的位置
    UIBarButtonItem *cancelBtn = [[UIBarButtonItem alloc] initWithTitle:@"取消" style:UIBarButtonItemStylePlain target:self action:@selector(cancel)];
    self.navigationItem.rightBarButtonItem = cancelBtn;
}

- (void)loadLoginView{
    
    // 添加webview
    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, SCREENWIDTH, SCREENHEIGHT)];
    
    self.view = webView;

    
    NSString *urlStr = [AUTHORIZE_URL stringByAppendingFormat:@"?display=mobile&client_id=%@&redirect_uri=%@", APPKEY, REDIRECT_URl];
    NSURL *url = [NSURL URLWithString:urlStr];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];

    // 2.设置代理
    webView.delegate = self;

}

#pragma mark - events
- (void)cancel{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

#pragma mark - webview代理方法
// webView开始加载
- (void)webViewDidStartLoad:(UIWebView *)webView
{

    [CXProgressHUD showLoadingInView:self.view];
    
}

// webView请求完毕
- (void)webViewDidFinishLoad:(UIWebView *)webView{
    [CXProgressHUD hidenForView:self.view];
}

#pragma mark 拦截webView的所有请求
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
    //需要做拦截
    
    
    return YES;
}


@end












