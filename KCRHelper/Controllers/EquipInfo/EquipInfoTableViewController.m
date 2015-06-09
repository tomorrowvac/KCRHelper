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
@property NSArray* eList;//存储炮种类的
@end

@implementation EquipInfoTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title =@"装备资料";
    self.navigationController.navigationBarHidden = NO;
    
    //装备数据
    NSString* equipPath = [[NSBundle mainBundle]pathForResource:@"EquipListAll" ofType:@"plist"];
    self.equipList = [NSArray arrayWithContentsOfFile:equipPath];
    
    //section标题
    self.eList = @[@"砲銃強化弾",@"機",@"雷",@"其它"];
    
    //获取nib文件，注册
    UINib* eNib  = [UINib nibWithNibName:@"EquipTableViewCell" bundle:nil];
    [self.tableView registerNib:eNib forCellReuseIdentifier:@"EquipTableViewCell"];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.eList.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    NSArray* equip = [self.equipList objectAtIndex:section];
    return equip.count;
}

#pragma mark - Table view data source
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    EquipTableViewCell* equipCell = [tableView dequeueReusableCellWithIdentifier:@"EquipTableViewCell" forIndexPath:indexPath];
    
    if (indexPath.section == 0) {
        equipCell.equipName.text = self.equipList[0][indexPath.row][@"eName"];
    }else if (indexPath.section == 1){
    
        
        
    }else if (indexPath.section == 2){
        
        
        
        
    }else if (indexPath.section == 3){
        
        
        
        
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
    return [self.eList objectAtIndex:section];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    EquipInfoDetailViewController* equipIDVC = [[EquipInfoDetailViewController alloc]init];
    
    
    if (indexPath.section == 0) {
               equipIDVC.equipment =self.equipList[0][indexPath.row];
    }else if (indexPath.section == 1){
        
        
        
    }else if (indexPath.section == 2){
        
        
        
    }else if (indexPath.section == 3){
        
        
        
    }
    
    
    
    
    [self.navigationController pushViewController:equipIDVC animated:YES];
    
}



@end














