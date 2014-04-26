//
//  alertsViewController.m
//  ZXProjectZY
//
//  Created by qingyun on 14-4-26.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import "alertsViewController.h"

@interface alertsViewController ()
@property(nonatomic,retain)NSArray *alertArrayView;
@end
static NSString *kTitleKey=@"titleKey";
static NSString *kSourceKey=@"explainKey";
static NSString *kLabelKey=@"viewKye";
@implementation alertsViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        self.title=@"alters";
        self.alertArrayView=@[@{  kTitleKey:@"UIActionSheet",
                                  kLabelKey:@"Show Simple",
                                  kSourceKey:@"AlertsViewController.m - dialogSimpleAction" },
                              
                              @{  kTitleKey:@"UIActionSheet",
                                  kLabelKey:@"Show OK-Cancel",
                                  kSourceKey:@"AlertsViewController.m - dialogOKCancelAction" },
                              
                              @{  kTitleKey:@"UIActionSheet",
                                  kLabelKey:@"Show Customized",
                                  kSourceKey:@"AlertsViewController.m - dialogOtherAction" },
                              
                              @{  kTitleKey:@"UIAlertView",
                                  kLabelKey:@"Show Simple",
                                  kSourceKey:@"AlertsViewController.m - alertSimpleAction" },
                              
                              @{  kTitleKey:@"UIAlertView",
                                  kLabelKey:@"Show OK-Cancel",
                                  kSourceKey:@"AlertsViewController.m - alertOKCancelAction" },
                              
                              @{  kTitleKey:@"UIAlertView",
                                  kLabelKey:@"Show Custom",
                                  kSourceKey:@"AlertsViewController.m - alertOtherAction" },
                              
                              @{  kTitleKey:@"UIAlertView",
                                  kLabelKey:@"Secure Text Input",
                                  kSourceKey:@"AlertsViewController.m - alertSecureTextAction" }
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
//    self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellFileItme];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kTitleKey];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{

    return ((indexPath.row==0) ? 50 : 40);
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return self.alertArrayView.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return 2;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [self.alertArrayView[section] objectForKey:kTitleKey];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = nil;
    if (indexPath.row==0) {
        
        cell = [tableView dequeueReusableCellWithIdentifier:cellFileItme forIndexPath:indexPath];
        cell.textLabel.text=[self.alertArrayView[indexPath.section] objectForKey:kLabelKey];
        cell.tag=indexPath.row;
    }else{
        cell = [tableView dequeueReusableCellWithIdentifier:kTitleKey forIndexPath:indexPath];
        cell.textLabel.text=[self.alertArrayView[indexPath.section] objectForKey:kSourceKey];
        cell.selectionStyle=UITableViewCellSelectionStyleNone;
        cell.textLabel.font=[UIFont systemFontOfSize:13];
        cell.textLabel.textAlignment=NSTextAlignmentCenter;
        cell.textLabel.numberOfLines=2;
    }
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    switch (indexPath.section) {
        case 0:
        {
            UIActionSheet *one=[[UIActionSheet alloc]
                                initWithTitle:[self.alertArrayView[indexPath.section] objectForKey:kTitleKey]
                                delegate:nil cancelButtonTitle:@"OK"
                                destructiveButtonTitle:nil otherButtonTitles:nil];
            
            [one showInView:self.view];
            
            break;
        }
            
        case 1:
        {
            UIActionSheet *one=[[UIActionSheet alloc]
                                initWithTitle:[self.alertArrayView[indexPath.section] objectForKey:kTitleKey]
                                delegate:nil cancelButtonTitle:@"OK"
                                destructiveButtonTitle:@"cancel" otherButtonTitles:nil];
            
            [one showInView:self.view];
            
            break;
        }
            
        case 2:
        {
            UIActionSheet *one=[[UIActionSheet alloc]
                                initWithTitle:[self.alertArrayView[indexPath.section] objectForKey:kTitleKey]
                                delegate:nil cancelButtonTitle:@"button1"
                                destructiveButtonTitle:@"button2" otherButtonTitles:nil];
            
            [one showInView:self.view];
            
            break;
        }
            
        case 3:
        {
            UIAlertView *One=[[UIAlertView alloc]
                              initWithTitle:[self.alertArrayView[indexPath.section] objectForKey:kTitleKey]
                              message:[self.alertArrayView[indexPath.section] objectForKey:kSourceKey]
                              delegate:nil
                              cancelButtonTitle:[self.alertArrayView[indexPath.section] objectForKey:kLabelKey]
                              otherButtonTitles:nil];
            [One show];
            break;
        }
        case 4:
        {
            UIAlertView *One=[[UIAlertView alloc]
                              initWithTitle:[self.alertArrayView[indexPath.section] objectForKey:kTitleKey]
                              message:[self.alertArrayView[indexPath.section] objectForKey:kSourceKey]
                              delegate:nil
                              cancelButtonTitle:[self.alertArrayView[indexPath.section] objectForKey:kLabelKey]
                              otherButtonTitles:nil];
            [One show];
            break;
        }
            
        case 5:
        {
            UIAlertView *One=[[UIAlertView alloc]
                              initWithTitle:[self.alertArrayView[indexPath.section] objectForKey:kTitleKey]
                              message:[self.alertArrayView[indexPath.section] objectForKey:kSourceKey]
                              delegate:nil
                              cancelButtonTitle:[self.alertArrayView[indexPath.section] objectForKey:kLabelKey]
                              otherButtonTitles:nil];
            [One show];
            break;
        }
        case 6:
        {
            UIAlertView *One=[[UIAlertView alloc]
                              initWithTitle:[self.alertArrayView[indexPath.section] objectForKey:kTitleKey]
                              message:[self.alertArrayView[indexPath.section] objectForKey:kSourceKey]
                              delegate:nil
                              cancelButtonTitle:[self.alertArrayView[indexPath.section] objectForKey:kLabelKey]
                              otherButtonTitles:nil];
            [One show];
            break;
        }
            
        default:
            break;
    }
    
    
}

@end
