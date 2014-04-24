//
//  buttonTableViewController.m
//  ZXProjectZY
//
//  Created by qingyun on 14-4-21.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import "buttonTableViewController.h"

@interface buttonTableViewController ()
@property (retain,nonatomic)NSArray *buttonArray;
@property (retain,nonatomic)UIButton *background;
@property (retain,nonatomic)UIButton *buttonImage;
@property (retain,nonatomic)UIButton *roundedButton;
@property (retain,nonatomic)UIButton *attriButton;

@end
static NSString *kTitleKey=@"titleKey";
static NSString *kExplainKey=@"explainKey";
static NSString *kLabelKey=@"labelKey";
static NSString *kViewKey=@"viewKye";


@implementation buttonTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        self.title=@"buttons";
        self.buttonArray=@[ @{kTitleKey:@"UIBUTTON",
                              kLabelKey:@"Background Image",
                              kExplainKey:@"buttonTableViewContrlooer.m\n(UIButton*)this is my background!",
                              kViewKey:self.background},
                            
                            @{kTitleKey:@"UIBUTTON",
                              kLabelKey:@"Button With Image",
                              kExplainKey:@"buttonTableViewContrlooer.m\n(UIButton*)this is my buttonImage!",
                              kViewKey:self.buttonImage},

                            @{kTitleKey:@"UIBUTTONTYOEROUNDEDRECT",
                              kLabelKey:@"Rounded Button",
                              kExplainKey:@"buttonTableViewContrlooer.m\n(UIButton*)this is my roundedButton!",
                              kViewKey:self.roundedButton},
                            
                            @{kTitleKey:@"UIBUTTONTYOEROUNDEDRECT",
                              kLabelKey:@"Rounded Button",
                              kExplainKey:@"buttonTableViewContrlooer.m\n(UIButton*)this is my attriButton!",
                              kViewKey:self.attriButton},
                           
                           
                           
                           ];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
     self.navigationItem.rightBarButtonItem = self.editButtonItem;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellFileItme];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return ((indexPath.row==0) ? 60 : 40);
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return self.buttonArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return 2;
}
-(UIView *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{

    return [self.buttonArray[section] objectForKey:kTitleKey];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellFileItme forIndexPath:indexPath];
    if (indexPath.row==0) {
        
        UILabel *lable=[[UILabel alloc]initWithFrame:CGRectMake(20, 0, 180, 60)];
        lable.text=[self.buttonArray[indexPath.section] objectForKey:kLabelKey] ;
        lable.font=[UIFont systemFontOfSize:21];
        lable.textAlignment=NSTextAlignmentCenter;
//        lable.textAlignment=
        [cell.contentView addSubview:lable   ];
       
//        CGRect frame= CGRectMake(10, 10, CGRectGetWidth(cell.contentView.frame)-20, 40);
        UIView *view=[cell.contentView viewWithTag:1001];
        if (view) {
            [cell removeFromSuperview];
        }
        cell.tag=1001;
        cell.accessoryView=[self.buttonArray[indexPath.section] objectForKey:kViewKey];

       
        
    }else{
        cell.textLabel.numberOfLines=2;
        cell.textLabel.textAlignment=NSTextAlignmentCenter;
        cell.textLabel.font=[UIFont systemFontOfSize:12];

        cell.textLabel.text=[self.buttonArray[indexPath.section] objectForKey:kExplainKey];
        
    }
    cell.selectionStyle=UITableViewCellSelectionStyleNone;
    return cell;
}

#pragma mark -

#pragma mark button view
-(UIButton *)background
{
    if (_background==nil) {
        
        UIImage *image= [[UIImage imageNamed:@"whiteButton"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 7, 0, 7)   resizingMode:UIImageResizingModeStretch];
        UIImage *blueImage= [[UIImage imageNamed:@"blueButton"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 7, 0, 7) resizingMode:UIImageResizingModeStretch];
        CGRect frame =CGRectMake(0, 0, 80, 40);
        UIButton *btn=[[UIButton alloc]initWithFrame:frame];
        [btn setTitle:@"back" forState:UIControlStateNormal];
        [btn setBackgroundImage:image forState:UIControlStateNormal];
        [btn setBackgroundImage:blueImage forState:UIControlStateHighlighted];
        _background=btn;
    }
    
    return _background;

}

-(UIButton *)buttonImage
{
    if (_buttonImage==nil) {
        
        UIImage *image= [[UIImage imageNamed:@"whiteButton"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 5, 0, 5)   resizingMode:UIImageResizingModeStretch];
        UIImage *blueImage= [[UIImage imageNamed:@"blueButton"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 5, 0, 5) resizingMode:UIImageResizingModeStretch];
        CGRect frame =CGRectMake(0, 0, 80, 40);
        UIButton *btn=[[UIButton alloc]initWithFrame:frame];
        
        [btn setImage:[UIImage imageNamed:@"UIButton_custom"] forState:UIControlStateNormal];
        
        [btn setBackgroundImage:image forState:UIControlStateNormal];
        [btn setBackgroundImage:blueImage forState:UIControlStateHighlighted];
        _buttonImage=btn;
    }

    return _buttonImage;
}
-(UIButton*)roundedButton
{
    if (_roundedButton==nil) {
        
        UIButton  *btn =[UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn.frame=CGRectMake(0, 0, 80, 30);
        [btn setTitle:@"Rounded" forState:UIControlStateNormal];
        _roundedButton=btn;
        
    }
    return _roundedButton;
}

-(UIButton*)attriButton
{
    if (_attriButton==nil) {
        UIButton *btn= [UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn.tintColor=[UIColor redColor];
        btn.frame=CGRectMake(0, 0, 80, 30);
        [btn setTitle:@"Rounded" forState:UIControlStateNormal];
        
        _attriButton=btn;
    }
    
    return _attriButton;
    
}


@end
