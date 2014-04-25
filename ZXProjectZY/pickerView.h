//
//  pickerView.h
//  ZXProjectZY
//
//  Created by qingyun on 14-4-24.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface pickerView : NSObject<UIPickerViewDataSource,UIPickerViewDelegate>
@property(nonatomic,copy)NSArray *imageName;
@property(nonatomic,copy)NSArray *strName;

@end
