//
//  EquipInfoDetailViewController.m
//  KCRHelper
//
//  Created by workeramo on 15/6/5.
//  Copyright (c) 2015年 HenTaiWorkerspace. All rights reserved.
//

#import "EquipInfoDetailViewController.h"

@interface EquipInfoDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *eRaityLabel;
@property (weak, nonatomic) IBOutlet UILabel *eFirepowerLabel;
@property (weak, nonatomic) IBOutlet UILabel *eThunLabel;
@property (weak, nonatomic) IBOutlet UILabel *eBoomLabel;
@property (weak, nonatomic) IBOutlet UILabel *eAntiairLabel;
@property (weak, nonatomic) IBOutlet UILabel *eAntiSubmLabel;
@property (weak, nonatomic) IBOutlet UILabel *eSearchEneLabel;
@property (weak, nonatomic) IBOutlet UILabel *eAvoidLabel;
@property (weak, nonatomic) IBOutlet UILabel *eHitLabel;
@property (weak, nonatomic) IBOutlet UILabel *eRangeLabel;
@property (weak, nonatomic) IBOutlet UILabel *eNoteLabel;
@property (weak, nonatomic) IBOutlet UILabel *eEqubleLabel;


@property (weak, nonatomic) IBOutlet UIImageView *headImage;

@end

@implementation EquipInfoDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = self.equipment[@"eName"];
    NSString* headRaity = @"稀有度:";
    self.eRaityLabel.text = [headRaity stringByAppendingString:self.equipment[@"eRarity"]];
    NSString* headFirepower = @"火力:";
    self.eFirepowerLabel.text = [headFirepower stringByAppendingString:self.equipment[@"eFirepower"]];
    NSString* headThun = @"雷装:";
    self.eThunLabel.text = [headThun stringByAppendingString:self.equipment[@"eThun"]];
    NSString* headBoom = @"爆装:";
    self.eBoomLabel.text = [headBoom stringByAppendingString:self.equipment[@"eBoom"]];
    NSString* headAntiair = @"对空:";
    self.eAntiairLabel.text = [headAntiair stringByAppendingString:self.equipment[@"eAntiair"]];
    NSString* headAntiSubm = @"反潜:";
    self.eAntiSubmLabel.text = [headAntiSubm stringByAppendingString:self.equipment[@"eAntiSubm"]];
    NSString* headSearchEne = @"索敌:";
    self.eSearchEneLabel.text = [headSearchEne stringByAppendingString:self.equipment[@"eSearchEne"]];
    NSString* headAvoid = @"躲避:";
    self.eAvoidLabel.text = [headAvoid stringByAppendingString:self.equipment[@"eAvoid"]];
    NSString* headHit = @"命中:";
    self.eHitLabel.text = [headHit stringByAppendingString:self.equipment[@"eHit"]];;
    NSString* headRange = @"射程:";
    self.eRangeLabel.text = [headRange stringByAppendingString:self.equipment[@"eRange"]];
    NSString* headNote = @"备注:";
    self.eNoteLabel.text = [headNote stringByAppendingString:self.equipment[@"eNote"]];
    NSString* headEquble = @"可装备:";
    self.eEqubleLabel.text = [headEquble stringByAppendingString:self.equipment[@"eEquble"]];
    
    //file name
    NSString* fileName = self.equipment[@"eName"];
    //firl path
    NSString* imagePath = [[NSBundle mainBundle] pathForResource:fileName ofType:@"png"];
    // get png
    UIImage *headImage = [[UIImage alloc] initWithContentsOfFile:imagePath];
    //set headImage
    self.headImage.image = headImage;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];



}



@end
