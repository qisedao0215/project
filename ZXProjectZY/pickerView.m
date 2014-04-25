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

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.strName=@[@"EArly Morning",@"Late Morning",@"Afternoon",@"Evening"];
        self.imageName=@[@"12-6AM",@"6-12AM",@"12-6PM",@"6-12PM"];
    }
    return self;
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}


- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return self.strName.count;
}
- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row
          forComponent:(NSInteger)component reusingView:(UIView *)view
{
    pickerViewZX *mainView=[[pickerViewZX alloc]initWithFrame:CGRectMake(0, 0, 320, 40)];
    [mainView setValue:[UIImage imageNamed:@"12-6AM"] title:self.strName[row]];
    return mainView;
    
}
@end
