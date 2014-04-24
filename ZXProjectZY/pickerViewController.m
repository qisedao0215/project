//
//  pickerViewController.m
//  ZXProjectZY
//
//  Created by qingyun on 14-4-24.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import "pickerViewController.h"
#import "pickerView.h"

@interface pickerViewController ()
@property (nonatomic,copy)NSArray *pickerArray;
@end

@implementation pickerViewController
{
    UISegmentedControl *twoSegmentCtl;
    UIPickerView *pickViewOne;
    UIPickerView *pickViewTwo;
    UIDatePicker *datepicker;
    UILabel *label;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title=@"pickerView!";
        self.pickerArray=@[@"John Appleseed",
                           @"chris Armstrong",
                           @"Serena Auroux",
                           @"Susan Bean",
                           @"Luis Becerra",
                           @"Kate Bell",
                           @"Alain Briere",];
        self.view.backgroundColor  =[UIColor grayColor];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    pickViewOne=[[UIPickerView alloc]initWithFrame:CGRectMake(0, 70, 0, 0)];
    pickViewOne.dataSource=self;
    pickViewOne.delegate=self;
    pickViewOne.showsSelectionIndicator=YES;

    [self.view addSubview:pickViewOne];
    
    UIToolbar *toolbar=[[UIToolbar alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(self.view.frame)-50, CGRectGetWidth(self.view.frame), 50)];
    UISegmentedControl *seg=[[UISegmentedControl alloc]initWithItems:@[@"1",@"2",@"3"]];
    seg.frame=CGRectMake(0, 0, 220, 40);
    seg.selectedSegmentIndex=0;
    [seg addTarget:self action:@selector(oneSegmentCtl:) forControlEvents:UIControlEventValueChanged];
    UIBarButtonItem *barBtn=[[UIBarButtonItem alloc]initWithCustomView:seg];
    UIBarButtonItem *spackBtn=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:
                               UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
    
    toolbar.items=@[spackBtn,barBtn,spackBtn];
    
    [self.view addSubview:toolbar];
    
    label=[[UILabel alloc]initWithFrame:CGRectMake(50, CGRectGetMaxY(pickViewOne.frame), 220, 50)];
    label.text=[NSString stringWithFormat:@"%@-0",self.pickerArray[0]];
    label.textAlignment=NSTextAlignmentCenter;
    label.font=[UIFont systemFontOfSize:13];
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)oneSegmentCtl:(UISegmentedControl*)sender
{
    switch (sender.selectedSegmentIndex) {
        case 0:
        {
            pickViewOne.hidden=NO;
            
            datepicker.hidden=YES;
            pickViewTwo.hidden=YES;
            twoSegmentCtl.hidden=YES;
            label.text=[NSString stringWithFormat:@"%@-0",self.pickerArray[0]];
            
        }
            break;
        case 1:
        {
            pickViewOne.hidden=YES;
            pickViewTwo.hidden=YES;
            datepicker=[[UIDatePicker alloc]initWithFrame:CGRectMake(0, CGRectGetMinY(pickViewOne.frame), 0, 0)];
            datepicker.datePickerMode=UIDatePickerModeTime;
            datepicker.date=[NSDate date];
            
            [self.view addSubview:datepicker];
            
            label.text=@"UIDatePickerModeTime";
            
            twoSegmentCtl=[[UISegmentedControl alloc]initWithItems:@[@"1",@"2",@"3",@"4"]];
            twoSegmentCtl.frame=CGRectMake(50, CGRectGetMaxY(label.frame), 220, 40);
            twoSegmentCtl.selectedSegmentIndex=0;
            [twoSegmentCtl addTarget:self action:@selector(twoSegmentBtn:) forControlEvents:UIControlEventValueChanged];
            [self.view addSubview:twoSegmentCtl];
        }
            break;
        case 2:
        {
            pickViewOne.hidden=YES;
            datepicker.hidden=YES;
            twoSegmentCtl.hidden=YES;
            
            pickViewTwo =[[UIPickerView alloc]initWithFrame:CGRectMake(0, CGRectGetMinY(pickViewOne.frame), 0, 0)];
            pickerView *pickerViewThree=[[pickerView alloc]init];
            pickViewTwo.delegate   = pickerViewThree;
            pickViewTwo.dataSource = pickerViewThree;
            pickViewTwo.showsSelectionIndicator=YES;
            [self.view addSubview:pickViewTwo];
        
            break;
        }
        default:
            break;
    }

}
-(void)twoSegmentBtn:(UISegmentedControl*)sender
{
    switch (sender.selectedSegmentIndex) {
        case 0:
        {
            datepicker.datePickerMode=UIDatePickerModeTime;
            label.text=@"UIDatePickerModeTime";
        
        }
            break;
        case 1:
        {
            datepicker.datePickerMode=UIDatePickerModeCountDownTimer;
            label.text=@"UIDatePickerModeCountDownTimer";
        }
            break;
        case 2:
        {
            datepicker.datePickerMode=UIDatePickerModeDate;
            label.text=@"UIDatePickerModeDate";
        }
            break;
        case 3:
        {
            datepicker.datePickerMode=UIDatePickerModeDateAndTime;
            label.text=@"UIDatePickerModeDateAndTime";
        }
            break;
            
        default:
            break;
    }

}

#pragma mark - delegate
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    NSString *str=nil;
    if (component==0) {
        str=self.pickerArray[row];
    }else
    {
        str=[[NSNumber numberWithInt:row] stringValue];
    }
    
    return str;
}
- (NSAttributedString *)pickerView:(UIPickerView *)pickerView attributedTitleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    NSMutableAttributedString *attri=nil;
    if (row==0) {
        NSString *str=nil;
        if (component==0) {
            str=self.pickerArray[row];
        }else
        {
            str=[NSString stringWithFormat:@"%d",row];
        }
        attri=[[NSMutableAttributedString alloc]initWithString:str
                                                    attributes:@{NSForegroundColorAttributeName:[UIColor redColor]}];
        
    }
    
    return attri;
    
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}


- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return self.pickerArray.count;
}

-(CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component
{
    CGFloat floatP=0.0;
    if (component==0) {
        floatP=240.0;
    }else
    {
        floatP=40.0;
    }
    return floatP;
}
@end
