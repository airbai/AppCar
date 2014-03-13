//
//  AppCarViewConfig.h
//  AppCard
//
//  Created by linminglu on 14-3-14.
//  Copyright (c) 2014年 linminglu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFHTTPRequestOperation.h"
@interface AppCarViewConfig : NSObject
+ (AppCarViewConfig *)defaultManager;

- (void)showLoadingViewWithTitle:(NSString *)title requestOperation:(AFHTTPRequestOperation *)requestOperation;
- (void)setupAppearance; //控制导航栏
- (void)hideLoadingView;
@end


