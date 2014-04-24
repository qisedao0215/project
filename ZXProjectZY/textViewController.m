//
//  textViewController.m
//  ZXProjectZY
//
//  Created by qingyun on 14-4-22.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import "textViewController.h"

@interface textViewController ()

@end

@implementation textViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        self.title=@"textView!";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *str=@"- (void)didReceiveMemoryWarning{[super didReceiveMemoryWarning]// Dispose of any resources thacanbe recreated.}/*#pragma mark - Navigation// In a storyboard-based application, you will often want to do a little preparation before navigatio- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender// Get the new view controller using [segue destinationViewController].// Pass the selected object to the new view contro" ;
    
    NSMutableAttributedString *attriString = [[NSMutableAttributedString alloc]initWithString:str];
    
    UITextView *textView = [[UITextView alloc]initWithFrame:self.view.frame];
    
    
    [textView setAttributedText:attriString];
    
    [self.view addSubview:textView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma  mark --willshow

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyBoardWillHide:)
                                                 name:UIKeyboardWillHideNotification
                                               object:nil];
    
    [[NSNotificationCenter defaultCenter]addObserver:self
                                            selector:@selector(keyBoardWillShow:)
                                                name:UIKeyboardWillShowNotification
                                              object:nil];
    
}
-(void)keyBoardWillHide:(NSNotification *)sender
{

}
-(void)keyBoardWillShow:(NSNotification *)sender
{

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
