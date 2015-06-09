//
//  ExpeditonDetailController.m
//  KCRHelper
//
//  Created by Vachel on 15/6/6.
//  Copyright (c) 2015年 HenTaiWorkerspace. All rights reserved.
//

#import "ExpeditonDetailController.h"

@interface ExpeditonDetailController ()
@property (weak, nonatomic) IBOutlet UILabel *eLevel;
@property (weak, nonatomic) IBOutlet UILabel *eOption;
@property (weak, nonatomic) IBOutlet UILabel *eTime;
@property (weak, nonatomic) IBOutlet UILabel *eOilTake;
@property (weak, nonatomic) IBOutlet UILabel *eAmoTake;
@property (weak, nonatomic) IBOutlet UILabel *eROi;
@property (weak, nonatomic) IBOutlet UILabel *eRAm;
@property (weak, nonatomic) IBOutlet UILabel *eRSt;
@property (weak, nonatomic) IBOutlet UILabel *eRAl;
@property (weak, nonatomic) IBOutlet UILabel *eRBu;
@property (weak, nonatomic) IBOutlet UILabel *eRRe;
@property (weak, nonatomic) IBOutlet UILabel *eRMa;
@property (weak, nonatomic) IBOutlet UILabel *eRFu;
@property (weak, nonatomic) IBOutlet UILabel *ePS;
@property (weak, nonatomic) IBOutlet UILabel *eEXP;
@end

@implementation ExpeditonDetailController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.edgesForExtendedLayout = 0;
    self.navigationController.navigationBarHidden = NO;
    self.title = [self.expedition valueForKey:@"eName"];
    self.eLevel.text = [self.expedition valueForKey:@"eLevel"];
    self.eOption.text = [self.expedition valueForKey:@"eOption"];
    self.eTime.text = [self.expedition valueForKey:@"eTimeTake"];
    self.eOilTake.text = [self.expedition valueForKey:@"eRSCTake"][@"eTO"];
    self.eAmoTake.text = [self.expedition valueForKey:@"eRSCTake"][@"eTA"];
    self.eROi.text = [self.expedition valueForKey:@"eReward"][@"eROi"];
    self.eRAm.text = [self.expedition valueForKey:@"eReward"][@"eRAm"];
    self.eRSt.text = [self.expedition valueForKey:@"eReward"][@"eRSt"];
    self.eRAl.text = [self.expedition valueForKey:@"eReward"][@"eRAl"];
    self.eRBu.text = [self.expedition valueForKey:@"eReward"][@"eRBu"];
    self.eRRe.text = [self.expedition valueForKey:@"eReward"][@"eRRe"];
    self.eRMa.text = [self.expedition valueForKey:@"eReward"][@"eRMa"];
    self.eRFu.text = [self.expedition valueForKey:@"eReward"][@"eRFu"];
    self.eEXP.text = [self.expedition valueForKey:@"eEXP"];
    self.ePS.text = [self.expedition valueForKey:@"ePS"];
    // Do any additional setup after loading the view from its nib.
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
