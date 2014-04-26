//
//  transitionViewController.m
//  ZXProjectZY
//
//  Created by qingyun on 14-4-25.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import "transitionViewController.h"

@interface transitionViewController ()

@end

@implementation transitionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title=@"transitions";
        
        self.view.backgroundColor =[UIColor grayColor];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImageView *imageViewZX=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"scene1.jpg"]];
    imageViewZX.frame=CGRectMake(20, 70, 280, 200);
    
    [self.view addSubview:imageViewZX];
    
    
    UIButton *btnOne=[[UIButton alloc]initWithFrame:CGRectMake(40, self.view.bounds.size.height-50, 100, 30)];
    btnOne.backgroundColor =[UIColor yellowColor];
    [btnOne addTarget:self action:@selector(onBTNOne) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnOne];
    
    
    
    UIButton *btnTwo=[[UIButton alloc]initWithFrame:CGRectMake(CGRectGetMaxX(btnOne.frame)+40, btnOne.frame.origin.y, CGRectGetWidth(btnOne.bounds), CGRectGetHeight(btnOne.bounds))];
    [btnTwo setTitle:@"123" forState:UIControlStateNormal];
    btnTwo.backgroundColor=[UIColor yellowColor];
    [btnTwo addTarget:self action:@selector(onBTNTwo) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnTwo];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)onBTNOne
{


}


-(void)onBTNTwo
{
    
    
}

@end
