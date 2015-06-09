//
//  HTWKcrViewController.m
//  KCRHelper
//
//  Created by workeramo on 15/6/5.
//  Copyright (c) 2015年 HenTaiWorkerspace. All rights reserved.
//

#import "HTWKcrViewController.h"
#import "EquipInfoTableViewController.h"
#import "ExpeditionsListViewConreoller.h"
#import "ShipInfoTableViewController.h"



@interface HTWKcrViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *backImage;

@end

@implementation HTWKcrViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = YES;
    
    
    
    

}

- (void)viewWillAppear:(BOOL)animated{
    self.navigationController.navigationBarHidden = YES;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)equipInfoClicked:(id)sender {
    EquipInfoTableViewController* equipInfoVC = [[EquipInfoTableViewController alloc]init];
    [self.navigationController pushViewController:equipInfoVC animated:YES];
    
    
    
}

- (IBAction)shipInfoClicked:(id)sender {
    ShipInfoTableViewController* shipInfoVC = [[ShipInfoTableViewController alloc]init];
    [self.navigationController pushViewController:shipInfoVC animated:YES];
    
}
- (IBAction)shipFormularClicked:(id)sender {
    
    
    
}
- (IBAction)expeditionInfoClicked:(id)sender {
    ExpeditionsListViewConreoller *expeditionListVC =[[ExpeditionsListViewConreoller alloc]init];
    [self.navigationController pushViewController:expeditionListVC animated:YES];
    
}
- (IBAction)questInfoClicked:(id)sender {
    
    
}
- (IBAction)equipFormularClicked:(id)sender {
    
    
}



#pragma mark - 移除顶部电池状态栏

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}
//
- (BOOL)prefersStatusBarHidden//for iOS7.0
{
    return YES;
}


@end
