//
//  EquipInfoTableViewController.m
//  KCRHelper
//
//  Created by workeramo on 15/6/5.
//  Copyright (c) 2015年 HenTaiWorkerspace. All rights reserved.
//

#import "EquipInfoTableViewController.h"
#import "EquipInfoDetailViewController.h"
#import "EquipTableViewCell.h"

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
                            @"中口径主砲":@1,
                            @"大口径主炮":@2};
    
    //获取nib文件，注册
    UINib* eNib  = [UINib nibWithNibName:@"EquipTableViewCell" bundle:nil];
    [self.tableView registerNib:eNib forCellReuseIdentifier:@"EquipTableViewCell"];
    

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
    EquipTableViewCell* equipCell = [tableView dequeueReusableCellWithIdentifier:@"EquipTableViewCell" forIndexPath:indexPath];
    
    if (indexPath.section == 0) {
        equipCell.equipName.text = self.equipList[indexPath.row][@"eName"];
    }else if (indexPath.section == 1) {
        equipCell.equipName.text = self.equipList1[indexPath.row][@"eName"];
    }
    
    NSString* fileName = equipCell.equipName.text;
    NSString* imagePath = [[NSBundle mainBundle] pathForResource:fileName ofType:@"png"];
    UIImage *headImage = [[UIImage alloc] initWithContentsOfFile:imagePath];
    equipCell.headImage.image = headImage;
    
    return equipCell;
}

//设置行高
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 65;
}


//section标题名
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return [[self.expeditionList allKeys]objectAtIndex:section];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    EquipInfoDetailViewController* equipIDVC = [[EquipInfoDetailViewController alloc]init];
    
    
    if (indexPath.section == 0) {
               equipIDVC.equipment =self.equipList[indexPath.row];
    }else if (indexPath.section == 1) {
               equipIDVC.equipment =self.equipList1[indexPath.row];
    }
    
    [self.navigationController pushViewController:equipIDVC animated:YES];
    
}



@end














