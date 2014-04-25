//
//  pickerViewZX.m
//  ZXProjectZY
//
//  Created by qingyun on 14-4-24.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import "pickerViewZX.h"

@implementation pickerViewZX{
    UIImageView *viewMain;
    UILabel *label;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        viewMain=[[UIImageView alloc] init];
        viewMain.frame=CGRectMake(10, 0, 40, 40);
        [self addSubview:viewMain];
        
        label=[[UILabel alloc]initWithFrame:CGRectMake(70, 0, 250, 40)];
        
        [self addSubview:label];
        
    }
    return self;
}
-(void)setValue:(UIImage *)imageView title:(NSString *)str
{
    viewMain.image=imageView;
    label.text=str;
}
@end


