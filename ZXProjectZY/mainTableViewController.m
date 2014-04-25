////  mainTableViewController.m//  ZXProjectZY////  Created by qingyun on 14-4-19.//  Copyright (c) 2014年 qingyun. All rights reserved.//#import "mainTableViewController.h"#import "textFieldTableViewController.h"#import "viewTableViewController.h"#import "buttonTableViewController.h"#import "searchBarViewController.h"#import "textViewController.h"#import "pickerViewController.h"#import "ZXZYTableViewController.h"#import "imageViewController.h"#import "webViewController.h"#import "segmentsViewController.h"#import "toolbarViewController.h"#import "alertsViewController.h"#import "transitionViewController.h"@interface mainTableViewController ()@property (nonatomic,copy) NSArray *mainArray;@endstatic NSString *kTitleKey=@"titleKey";static NSString *kExplainKey=@"explainKey";static NSString *kViewKey=@"viewKye";@interface tableViewZX : UITableViewCell@end@implementation tableViewZX-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{    return [super initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier];}@end@implementation mainTableViewController- (id)initWithStyle:(UITableViewStyle)style{    self = [super initWithStyle:style];        if (self) {                  }    return self;}- (void)viewDidLoad{    [super viewDidLoad];    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellFileItme];//    [self.tableView registerClass:[UITableView class] forCellReuseIdentifier:kTitleKey];        self.title=@"main!";        buttonTableViewController *buttonZX=[[buttonTableViewController alloc]initWithStyle:                                         UITableViewStyleGrouped];        textFieldTableViewController *textFieldZX=[[textFieldTableViewController alloc]initWithStyle:                                               UITableViewStyleGrouped];        viewTableViewController *viewFileZX= [[viewTableViewController alloc]initWithStyle:                                          UITableViewStyleGrouped];        searchBarViewController *searchBar= [[searchBarViewController alloc]init];        textViewController *textView= [[textViewController alloc]init    ];        pickerViewController  *pickerView=[[pickerViewController alloc]init];        ZXZYTableViewController *zypcker=[[ZXZYTableViewController alloc]init];        imageViewController *imageZX=[[imageViewController alloc]init];        webViewController *webViewZX=[[webViewController alloc]init  ];        segmentsViewController *segViewZX=[[segmentsViewController alloc]init];        toolbarViewController  *toolBarZX=[[toolbarViewController alloc]init];        alertsViewController  *alertsViewZX=[[alertsViewController alloc]init];        transitionViewController *transViewZX=[[transitionViewController alloc]init];        self.mainArray=@[@{ kTitleKey:buttonZX.title,                        kExplainKey:@"this is my buttonZX!",                        kViewKey:buttonZX},                                          @{ kTitleKey:textFieldZX.title,                        kExplainKey:@"this is my textField!",                        kViewKey:textFieldZX},                                          @{ kTitleKey:viewFileZX.title,                        kExplainKey:@"this is my viewFileZX!",                        kViewKey:viewFileZX},                                          @{ kTitleKey:searchBar.title,                        kExplainKey:@"this is my searchBar!",                        kViewKey:searchBar},                                          @{ kTitleKey:textView.title,                        kExplainKey:@"this is my textView!",                        kViewKey:textView},                                          @{ kTitleKey:pickerView.title,                        kExplainKey:@"this is my pickerView!",                        kViewKey:pickerView},                                          @{ kTitleKey:imageZX.title,                        kExplainKey:@"this is my images!",                        kViewKey:imageZX},                                          @{ kTitleKey:webViewZX.title,                        kExplainKey:@"this is my web!",                        kViewKey:webViewZX},                                          @{ kTitleKey:segViewZX.title,                        kExplainKey:@"this is my segments!",                        kViewKey:segViewZX},                                          @{ kTitleKey:toolBarZX.title,                        kExplainKey:@"this is my toolBar!",                        kViewKey:toolBarZX},                                          @{ kTitleKey:alertsViewZX.title,                        kExplainKey:@"this is my alertsView!",                        kViewKey:alertsViewZX},                                          @{ kTitleKey:transViewZX.title,                        kExplainKey:@"this is my transView!",                        kViewKey:transViewZX},                                         @{ kTitleKey:zypcker.title,                        kExplainKey:@"this is my zypcker!",                        kViewKey:zypcker},                     ];    [self.tableView registerClass:[tableViewZX class] forCellReuseIdentifier:cellFileItme];   }- (void)didReceiveMemoryWarning{    [super didReceiveMemoryWarning];    // Dispose of any resources that can be recreated.}-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{    return 50;}#pragma mark - Table view data source- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{    return 1;}- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{    return self.mainArray.count;}- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:                             cellFileItme forIndexPath:indexPath];    //    cell.selectionStyle=UITableViewCellStyleSubtitle;        cell.textLabel.text=[self.mainArray[indexPath.row] objectForKey:kTitleKey];        cell.detailTextLabel.text=[self.mainArray[indexPath.row] objectForKey:kExplainKey];        cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;            return cell;}-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{    [self.navigationController pushViewController:     [self.mainArray[indexPath.row] objectForKey:kViewKey] animated:YES];}@end