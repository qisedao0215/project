//
//  pickerView.m
//  ZXProjectZY
//
//  Created by qingyun on 14-4-24.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import "pickerView.h"
#import "pickerViewZX.h"

@implementation pickerView
{
    pickerViewZX *mainView;
}
//-(UIView*)init
//{
//    [super init];
//    pickerViewZX *mainView=[[pickerViewZX alloc]initWithFrame:CGRectMake(0, 0, 320, 40)];
//    mainView.str=@"6-12AM";
//    mainView.imageView=[UIImage imageNamed:@"6-12AM.png"];
//    return mainView;
//}
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}


- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 1;
}
- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row
          forComponent:(NSInteger)component reusingView:(UIView *)view
{
    mainView=[[pickerViewZX alloc]initWithFrame:CGRectMake(0, 0, 320, 40)];
        mainView.str=@"6-12AM";
        mainView.imageView=[UIImage imageNamed:@"6-12AM.png"];
    return mainView;
    
}

@end
