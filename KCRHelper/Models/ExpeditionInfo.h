//
//  ExpeditionInfo.h
//  KCRHelper
//
//  Created by Vachel on 15/6/5.
//  Copyright (c) 2015年 HenTaiWorkerspace. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ExpeditionInfo : NSObject
@property(nonatomic,strong)NSString *name;
@property(nonatomic,strong)NSString *require;
@property(nonatomic,strong)NSMutableDictionary *rescource;
@property(nonatomic,strong)NSString *rewards;
@end
