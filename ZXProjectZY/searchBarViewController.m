//
//  searchBarViewController.m
//  ZXProjectZY
//
//  Created by qingyun on 14-4-21.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import "searchBarViewController.h"

@interface searchBarViewController ()

@end

@implementation searchBarViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title= @"searchBar";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    UISearchBar *searchBar= [[UISearchBar alloc]initWithFrame:CGRectMake(0, 64, 320, 40) ];

    searchBar.showsBookmarkButton=YES;
    searchBar.showsCancelButton=YES;
    
    [self.view addSubview:searchBar];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
