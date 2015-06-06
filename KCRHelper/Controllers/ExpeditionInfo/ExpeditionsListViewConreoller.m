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

@interface ExpeditionsListViewConreoller ()
@property NSArray *expeditionList1;

@property NSDictionary *ExpeditionTList;
@end

@implementation ExpeditionsListViewConreoller

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"远征一览";
    self.navigationController.navigationBarHidden = NO;
    NSString *expeditionPath1 = [[NSBundle mainBundle]pathForResource:@"expedition_z1" ofType:@"plist"];
    self.expeditionList1 = [NSArray arrayWithContentsOfFile:expeditionPath1];
    
    self.ExpeditionTList = @{@"镇守府海域":@1};
//    @"南西诸岛海域":@2,
//    @"北方海域":@3,
//    @"西方海域":@4,
//    @"南方海域":@5,
    
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
    return self.expeditionList1.count;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return [[self.ExpeditionTList allKeys]objectAtIndex:section];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ExpeditionCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ExpeditionCell" forIndexPath:indexPath];
    if (indexPath.section == 1) {
        cell.expeditionLabel.text = self.expeditionList1[indexPath.row][@"eName"];
    }
    return cell;
}



/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here, for example:
    // Create the next view controller.
    <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:<#@"Nib name"#> bundle:nil];
    
    // Pass the selected object to the new view controller.
    
    // Push the view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
