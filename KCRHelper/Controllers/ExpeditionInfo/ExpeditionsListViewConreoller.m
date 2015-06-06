//
//  ExpeditionsListViewConreoller.m
//  KCRHelper
//  smallChange
//  Created by Vachel on 15/6/5.
//  Copyright (c) 2015年 HenTaiWorkerspace. All rights reserved.
//

#import "ExpeditionsListViewConreoller.h"
#import "ExpeditionCell.h"
#import "ExpeditonDetailController.h"

@interface ExpeditionsListViewConreoller ()<UITableViewDataSource,UITableViewDelegate>
@property NSArray *expeditionList1;
@property NSArray *expeditionList2;
@property NSArray *expeditionList3;
@property NSArray *expeditionList4;
@property NSArray *expeditionList5;

@property NSArray *ExpeditionTList;
@end

@implementation ExpeditionsListViewConreoller

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"远征一览";
    self.navigationController.navigationBarHidden = NO;
    NSString *expeditionPath1 = [[NSBundle mainBundle]pathForResource:@"expedition_z1" ofType:@"plist"];
    self.expeditionList1 = [NSArray arrayWithContentsOfFile:expeditionPath1];
    NSString *expeditionPath2 = [[NSBundle mainBundle]pathForResource:@"expedition_z2" ofType:@"plist"];
    self.expeditionList2 = [NSArray arrayWithContentsOfFile:expeditionPath2];
    NSString *expeditionPath3 = [[NSBundle mainBundle]pathForResource:@"expedition_z3" ofType:@"plist"];
    self.expeditionList3 = [NSArray arrayWithContentsOfFile:expeditionPath3];
    NSString *expeditionPath4 = [[NSBundle mainBundle]pathForResource:@"expedition_z4" ofType:@"plist"];
    self.expeditionList4 = [NSArray arrayWithContentsOfFile:expeditionPath4];
    NSString *expeditionPath5 = [[NSBundle mainBundle]pathForResource:@"expedition_z5" ofType:@"plist"];
    self.expeditionList5 = [NSArray arrayWithContentsOfFile:expeditionPath5];
    
    self.ExpeditionTList = @[@"镇守府海域",@"南西诸岛海域",@"北方海域",@"西方海域",@"南方海域"];
//    @"南西诸岛海域"
//    @"北方海域"
//    @"西方海域"
//    @"南方海域"
    
    UINib *expdCell = [UINib nibWithNibName:@"ExpeditionCell" bundle:nil];
    [self.tableView registerNib:expdCell forCellReuseIdentifier:@"ExpeditionCell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.ExpeditionTList.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return self.expeditionList1.count;
    }else if (section == 1){
        return self.expeditionList2.count;
    }else if (section == 2){
        return self.expeditionList3.count;
    }else if (section == 3){
        return self.expeditionList4.count;
    }else
        return self.expeditionList5.count;
    return 0;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return [self.ExpeditionTList objectAtIndex:section];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ExpeditionCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ExpeditionCell" forIndexPath:indexPath];
    if (indexPath.section == 0) {
        cell.expeditionLabel.text = self.expeditionList1[indexPath.row][@"eName"];
    }else if (indexPath.section == 1){
        cell.expeditionLabel.text = self.expeditionList2[indexPath.row][@"eName"];
    }else if (indexPath.section == 2){
        cell.expeditionLabel.text = self.expeditionList3[indexPath.row][@"eName"];
    }else if (indexPath.section == 3){
        cell.expeditionLabel.text = self.expeditionList4[indexPath.row][@"eName"];
    }else if (indexPath.section == 4){
        cell.expeditionLabel.text = self.expeditionList5[indexPath.row][@"eName"];
    }
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 65;
}

#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    ExpeditonDetailController *detailViewController = [[ExpeditonDetailController alloc] initWithNibName:@"ExpeditionDetailController" bundle:nil];
    [self.navigationController pushViewController:detailViewController animated:YES];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
