//
//  EquipInfoTableViewController.m
//  KCRHelper
//
//  Created by workeramo on 15/6/5.
//  Copyright (c) 2015年 HenTaiWorkerspace. All rights reserved.
//

#import "EquipInfoTableViewController.h"

@interface EquipInfoTableViewController ()

@property NSArray* equipList;
@property NSArray* equipList1;
@property NSDictionary* expeditionList;
@end

@implementation EquipInfoTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title =@"装备资料";
    self.navigationController.navigationBarHidden = NO;
    //装备数据：小口径单装炮
    NSString* equipPath = [[NSBundle mainBundle]pathForResource:@"EquipList_ssm_1_3" ofType:@"plist"];
    self.equipList = [NSArray arrayWithContentsOfFile:equipPath];
    //装备数据：小口径单装炮
    NSString* equipPath1 = [[NSBundle mainBundle]pathForResource:@"EquipList_mm_4_6" ofType:@"plist"];
    self.equipList1 = [NSArray arrayWithContentsOfFile:equipPath1];
    
    
    self.expeditionList = @{@"小口径主砲":@0,
                            @"中口径主砲":@1};
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [self.expeditionList count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.equipList.count;
}

#pragma mark - Table view data source
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell* cell  = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"UITableViewCellStyleValue1"];
    
    if (indexPath.section == 0) {
        cell.textLabel.text = self.equipList[indexPath.row][@"eName"];
    }else if (indexPath.section == 1) {
        cell.textLabel.text = self.equipList1[indexPath.row][@"eName"];
    }
    
    
    return cell;
}

//section标题名
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return [[self.expeditionList allKeys]objectAtIndex:section];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    
}



@end














