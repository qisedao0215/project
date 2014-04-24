//
//  pickerViewZX.m
//  ZXProjectZY
//
//  Created by qingyun on 14-4-24.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import "pickerViewZX.h"

@implementation pickerViewZX
{
    UIImageView *viewMain;
}
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        viewMain=[[UIImageView alloc] init];
                  viewMain.frame=CGRectMake(10, 0, 40, 40);
                  [self addSubview:viewMain];
//        viewMain.frame=CGRectMake(10, 0, 40, 40);
//        [self addSubview:viewMain];
//        
//        UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(70, 0, 250, 40)];
//        label.text=_str;
//        [self addSubview:label];
        
    }
    return self;
}

@end
