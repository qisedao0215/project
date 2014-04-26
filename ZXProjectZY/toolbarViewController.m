//
//  toolbarViewController.m
//  ZXProjectZY
//
//  Created by qingyun on 14-4-25.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import "toolbarViewController.h"

@interface toolbarViewController ()
@property (nonatomic,retain)NSArray *toolArray;

@end

@implementation toolbarViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

        self.title=@"toolbar";
        self.view.backgroundColor=[UIColor grayColor];
        self.toolArray=@[@"Done",
                         @"Cancel",
                         @"Edit",
                         @"Save",
                         @"Add",
                         @"FlexibleSpace",
                         @"FixedSpace",
                         @"Compose",
                         @"Reply",
                         @"Action",
                         @"Organize",
                         @"Bookmarks",
                         @"Search",
                         @"Refresh",
                         @"Stop",
                         @"Camera",
                         @"Trash",
                         @"Play",
                         @"Pause",
                         @"Rewind",
                         @"FastForward",
                         @"Undo",
                         @"Redo",
                         @"PageCurl"
                         ];

    }
    return self;
}
+(UILabel*)setUILabel:(NSString*)title toFrame:(CGRect)frame
{
    UILabel *label=[[UILabel alloc]initWithFrame:frame];
    label.text=title;
    label.font=[UIFont fontWithName:@"Menlo" size:13];
    
    return label;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CGRect frame=CGRectMake(20, 70, 280, 40);
    [self.view addSubview:[toolbarViewController setUILabel:@"UIBarstyle:" toFrame:frame]];
    
    
    UISegmentedControl *segCTL=[[UISegmentedControl alloc]initWithItems:@[@"Default",@"Black"]];
    segCTL.selectedSegmentIndex=1;
    frame.origin.y+=40;
    segCTL.frame=frame;
    [self.view addSubview:segCTL];
    
    
    frame.origin.y +=40;
    frame.size.width=60;
    [self.view addSubview:[toolbarViewController setUILabel:@"Image" toFrame:frame]];
    
    
    frame.origin.x+=60;
    frame.origin.y+=5;
    UISwitch *switchViewZX=[[UISwitch alloc]initWithFrame:frame];
    [self.view addSubview:switchViewZX];
    
    frame.origin.x +=90;
    frame.origin.y-=5;
    [self.view addSubview:[toolbarViewController setUILabel:@"Tinted" toFrame:frame]];
    
    frame.origin.x  +=70;
    frame.origin.y+=5;
    UISwitch *tintedViewZX=[[UISwitch alloc]initWithFrame:frame];
    [self.view addSubview:tintedViewZX];
    
    frame.origin.y+=40;
    frame.origin.x=20;
    frame.size.width=280;
    [self.view addSubview:[toolbarViewController setUILabel:@"UIBarButtonItmeStyle:" toFrame:frame]];
    
    frame.origin.y  +=40;
    [self.view addSubview:[toolbarViewController setUILabel:@"UIBarButtonSystemItem:" toFrame:frame]];
    
    frame.origin.y+=20;
    UIPickerView *pickerVZX=[[UIPickerView alloc]initWithFrame:frame];
    pickerVZX.delegate=self;
    pickerVZX.dataSource=self;
    pickerVZX.showsSelectionIndicator =YES;
    
    [self.view addSubview:pickerVZX];
    
    UIToolbar *toolViewZX=[[UIToolbar alloc]initWithFrame:CGRectMake(0, self.view.bounds.size.height-50, 320, 50)];
    
    [self.view addSubview:toolViewZX];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return self.toolArray[row];

}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}


- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return self.toolArray.count;
}



@end
