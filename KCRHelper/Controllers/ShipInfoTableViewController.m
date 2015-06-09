//
//  ShipInfoTableViewController.m
//  KCRHelper
//
//  Created by workeramo on 15/6/9.
//  Copyright (c) 2015年 HenTaiWorkerspace. All rights reserved.
//

#import "ShipInfoTableViewController.h"

@interface ShipInfoTableViewController ()
@property NSArray* shipList;//舰船
@property NSArray* sList;//舰种
@end

@implementation ShipInfoTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"舰娘";
    self.navigationController.navigationBarHidden = NO;
    
    
    //ship数据
    NSString* equipPath = [[NSBundle mainBundle]pathForResource:@"ShipipListAll" ofType:@"plist"];
    self.shipList = [NSArray arrayWithContentsOfFile:equipPath];
    
    //section标题
    self.sList = @[@"驱逐舰",@"战斗舰",@"轻巡"];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.sList.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray* ship = [self.shipList objectAtIndex:section];
    return ship.count;
}

#pragma mark - Table view data source
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell* cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"UITableViewCellStyleValue1"];
    
//    if (indexPath.section == 0) {
        cell.textLabel.text = self.shipList[0][indexPath.row][@"sName"];
//    }
    
    return cell;
}

//section标题名
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return [self.sList objectAtIndex:section];
}

@end
