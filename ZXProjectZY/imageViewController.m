//
//  imageViewController.m
//  ZXProjectZY
//
//  Created by qingyun on 14-4-25.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import "imageViewController.h"

@interface imageViewController ()

@end

@implementation imageViewController
{
    UIImageView *imageZX;
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title=@"images";
        self.view.backgroundColor=[UIColor grayColor];
        [UIImage imageNamed:@"scene1.jpg"];
        [UIImage imageNamed:@"scene2.jpg"];
        [UIImage imageNamed:@"scene2.jpg"];
        [UIImage imageNamed:@"scene2.jpg"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    imageZX=[[UIImageView alloc]initWithFrame:CGRectMake(20, 70, 280, 200)];
    imageZX.animationImages=@[
                              [UIImage imageNamed:@"scene1.jpg"],
                              [UIImage imageNamed:@"scene2.jpg"],
                              [UIImage imageNamed:@"scene3.jpg"],
                              [UIImage imageNamed:@"scene4.jpg"]
                              ];
    
    imageZX.animationDuration=1;
    [imageZX startAnimating];
    
    [self.view addSubview:imageZX];
    
    UISlider *slider=[[UISlider alloc]initWithFrame:CGRectMake(20, CGRectGetMaxY(imageZX.frame)+20, 280, 40 )];
    slider.maximumValue=20;
    [slider addTarget:self action:@selector(onSlider:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:slider];
}

-(void)onSlider:(UISlider*)sender
{
    imageZX.animationDuration=sender.value;
    if (!imageZX.isAnimating) {
        [imageZX startAnimating];
    }
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
