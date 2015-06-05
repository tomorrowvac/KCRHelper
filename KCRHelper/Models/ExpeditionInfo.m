//
//  ExpeditionInfo.m
//  KCRHelper
//
//  Created by Vachel on 15/6/5.
//  Copyright (c) 2015年 HenTaiWorkerspace. All rights reserved.
//

#import "ExpeditionInfo.h"

@implementation ExpeditionInfo
- (instancetype)init
{
    self = [super init];
    if (self) {
        _name = [NSString new];
        _require = [NSString new];
        _rescource = [NSMutableDictionary new];
        _rewards = [NSString new];
    }
    return self;
}
@end

