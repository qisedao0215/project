//
//  webViewController.m
//  ZXProjectZY
//
//  Created by qingyun on 14-4-25.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import "webViewController.h"

@interface webViewController ()

@end

@implementation webViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title=@"Web";
        self.view.backgroundColor = [UIColor brownColor];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIWebView *webZX=[[UIWebView alloc]initWithFrame:self.view.frame];
    webZX.delegate=self;
    
    NSURLRequest *surlRequest=[NSURLRequest requestWithURL:
                               [NSURL URLWithString:@"http://www.baidu.com"]];
                               
    [webZX loadRequest:surlRequest];
    [self.view addSubview:webZX];
    
                               
                               
}

//- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
//{
//    
//}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    [UIApplication sharedApplication].networkActivityIndicatorVisible=YES;
}
- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [UIApplication sharedApplication].networkActivityIndicatorVisible=NO;
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{

    NSLog(@"%@",error);

}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
