//
//  segmentsViewController.m
//  ZXProjectZY
//
//  Created by qingyun on 14-4-25.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import "segmentsViewController.h"

@interface segmentsViewController ()

@end

@implementation segmentsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title=@"segments";
        self.view.backgroundColor =[UIColor grayColor];
    }
    return self;
}
+(UILabel*)setUILabel:(NSString*)title toFrame:(CGRect)frame
{
    UILabel *label=[[UILabel alloc]initWithFrame:frame];
    label.text=title;
    label.font=[UIFont fontWithName:@"Menlo" size:16];
    
    return label;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CGRect frame=CGRectMake(20, 70, 280, 40);
    [self.view addSubview:[segmentsViewController setUILabel:
                          @"UISegmentViewController:" toFrame:frame]];
    UISegmentedControl *segOne=[[UISegmentedControl alloc]
                                initWithItems:@[
                                                [UIImage imageNamed:@"segment_check"],
                                                [UIImage imageNamed: @"segment_search"],
                                                [UIImage imageNamed:@"segment_tools"]]];
                                
    frame.origin.y+=40;
    segOne.frame=frame;
    [self.view addSubview:segOne];
    
    
    frame.origin.y+=40;
    [self.view addSubview:[segmentsViewController setUILabel:
                           @"UISegmentViewControllerStyleBordered:" toFrame:frame]];
    UISegmentedControl *segTwo=[[UISegmentedControl alloc]
                                initWithItems:@[@"check",@"search",@"tools"]];
    frame.origin.y+=40;
    segTwo.frame=frame;
//    segTwo.segmentedControlStyle=UISegmentedControlNoSegment;
    
    [self.view addSubview:segTwo];
    
    
    frame.origin.y+=40;
    [self.view addSubview:[segmentsViewController setUILabel:
                           @"UISegmentViewControllerStyleBar:" toFrame:frame]];
    UISegmentedControl *segThr=[[UISegmentedControl alloc]
                                initWithItems:@[@"check",@"search",@"tools"]];
    frame.origin.y+=40;
    segThr.frame=frame;
    [self.view addSubview:segThr];
    
    
    frame.origin.y+=40;
    [self.view addSubview:[segmentsViewController setUILabel:
                           @"UISegmentViewControllerBar:init" toFrame:frame]];
    UISegmentedControl *segFor=[[UISegmentedControl alloc]
                                initWithItems:@[@"check",@"search",@"tools"]];
    frame.origin.y+=40;
    segFor.frame=frame;
    segFor.tintColor=[UIColor redColor];
    [self.view addSubview:segFor];
    
    
    frame.origin.y+=40;
    [self.view addSubview:[segmentsViewController setUILabel:
                           @"UISegmentViewControllerBar:image" toFrame:frame]];
    UISegmentedControl *segFif=[[UISegmentedControl alloc]
                                initWithItems:@[@"check",@"search",@"tools"]];
    frame.origin.y+=40;
    segFif.frame=frame;
//    segFif.segmentedControlStyle  =UIControlStateNormal;
    [segFif setBackgroundImage:[UIImage imageNamed:@"searchBarBackground"]
                      forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [segFif setDividerImage:[UIImage imageNamed:@"divider"]
        forLeftSegmentState:UIControlStateNormal
          rightSegmentState:UIControlStateNormal
                 barMetrics:UIBarMetricsDefault];
    [self.view addSubview:segFif];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
  
}



@end
