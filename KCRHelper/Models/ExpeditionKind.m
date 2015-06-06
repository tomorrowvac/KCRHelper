//
//  ExpeditionKind.m
//  KCRHelper
//
//  Created by Vachel on 15/6/5.
//  Copyright (c) 2015年 HenTaiWorkerspace. All rights reserved.
//

#import "ExpeditionKind.h"
#import "ExpeditionInfo.h"
@implementation ExpeditionKind
- (instancetype)init
{
    self = [super init];
    if (self) {
        _listofKind = [NSMutableArray new];
    }
    return self;
}

- (void)addExpedition:(ExpeditionInfo *)expeditionInfo{
    [self.listofKind addObject:expeditionInfo];
}
@end
