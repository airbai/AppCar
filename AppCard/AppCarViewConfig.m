//
//  AppCarViewConfig.m
//  AppCard
//
//  Created by linminglu on 14-3-14.
//  Copyright (c) 2014年 linminglu. All rights reserved.
//

#import "AppCarViewConfig.h"
static AppCarViewConfig *defaultManagerInstance=NULL;
@implementation AppCarViewConfig

- (id)init
{
    self = [super init];
    if (self) {
       
    }
    return self;
}
+ (AppCarViewConfig *)defaultManager
{
    @synchronized(self) {
        static dispatch_once_t pred;
        dispatch_once(&pred, ^{
            defaultManagerInstance = [[self alloc] init];
        });
    }
    
    return defaultManagerInstance;
}

- (void)showLoadingViewWithTitle:(NSString *)title requestOperation:(AFHTTPRequestOperation *)requestOperation
{
    //以后来些这个load
}

- (void)hideLoadingView
{
    //以后来些这个load
}


- (void)setupAppearance
{
    float version = [[[UIDevice currentDevice] systemVersion] floatValue];
    if(version >= 5.0)
    {
        //导航栏
        NSString *nameSuffix = (version >= 7.0) ? @"_i7" : @"";
        NSString *imageName = [NSString stringWithFormat:@"navi_bg_prompt%@", nameSuffix];
        UIImage *tempImage = [[UIImage imageNamed:imageName] stretchableImageWithLeftCapWidth:5 topCapHeight:5];
        [[UINavigationBar appearance] setBackgroundImage:tempImage forBarMetrics:UIBarMetricsDefaultPrompt];
        
        imageName = [NSString stringWithFormat:@"navi_bg%@", nameSuffix];
        tempImage = [[UIImage imageNamed:imageName] stretchableImageWithLeftCapWidth:5 topCapHeight:5];
        [[UINavigationBar appearance] setBackgroundImage:tempImage forBarMetrics:UIBarMetricsDefault];
        
        NSMutableDictionary *attributesDictionary = [NSMutableDictionary dictionary];
        [attributesDictionary setValue:[UIFont boldSystemFontOfSize:20.0]               forKey:NSFontAttributeName];
        [attributesDictionary setValue:[UIColor whiteColor]                             forKey:NSForegroundColorAttributeName];
        [[UINavigationBar appearance] setTitleTextAttributes:attributesDictionary];
    }
}
@end
