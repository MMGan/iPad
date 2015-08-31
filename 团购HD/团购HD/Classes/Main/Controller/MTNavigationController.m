//
//  MTNavigationController.m
//  团购HD
//
//  Created by 甘凌云 on 15/8/31.
//  Copyright (c) 2015年 甘凌云. All rights reserved.
//

#import "MTNavigationController.h"

@interface MTNavigationController ()

@end

@implementation MTNavigationController

+ (void)initialize
{
    UINavigationBar *bar = [UINavigationBar appearance];
    [bar setBackgroundImage:[UIImage imageNamed:@"bg_navigationBar_normal"] forBarMetrics:UIBarMetricsDefault];
}


@end
