//
//  MTHomeViewController.m
//  团购HD
//
//  Created by 甘凌云 on 15/8/31.
//  Copyright (c) 2015年 甘凌云. All rights reserved.
//

#import "MTHomeViewController.h"
#import "UIBarButtonItem+Extension.h"
#import "UIView+Extension.h"
#import "MTHomeTopItem.h"
#import "MTKindViewController.h"
@interface MTHomeViewController ()
@property (nonatomic, weak) UIBarButtonItem *kindItem;
@property (nonatomic, weak) UIBarButtonItem *districtItem;
@property (nonatomic, weak) UIBarButtonItem *sortItem;
@end

@implementation MTHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置左边item
    [self setupLeftNav];
    //设置右边item
    [self setupRightNav];
    
}

- (void)setupLeftNav
{
    //logo
    UIBarButtonItem *logoItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"icon_meituan_logo"] style:UIBarButtonItemStyleDone target:nil action:nil];
    logoItem.enabled = NO;
    
    //类别
    MTHomeTopItem *kind = [MTHomeTopItem item];
    kind.size = CGSizeMake(120, 40);
    [kind addTarget:self action:@selector(kindBtnClick)];
    UIBarButtonItem *kindItem = [[UIBarButtonItem alloc] initWithCustomView:kind];
    self.kindItem = kindItem;
    
    //地区
    MTHomeTopItem *district = [MTHomeTopItem item];
    district.size = CGSizeMake(120, 40);
    [district addTarget:self action:@selector(districtBtnClick)];
    UIBarButtonItem *districtItem = [[UIBarButtonItem alloc] initWithCustomView:district];
    self.districtItem = districtItem;
    
    //排序
    MTHomeTopItem *sort = [MTHomeTopItem item];
    sort.size = CGSizeMake(120, 40);
    [sort addTarget:self action:@selector(sortBtnClick)];
    UIBarButtonItem *sortItem = [[UIBarButtonItem alloc] initWithCustomView:sort];
    self.navigationItem.leftBarButtonItems = @[logoItem, kindItem, districtItem, sortItem];
    self.sortItem = sortItem;
}

- (void)setupRightNav
{
    UIBarButtonItem *mapItem = [UIBarButtonItem itemWithTarget:nil action:nil imageName:@"icon_map" highImage:@"icon_map_highlighted"];
    mapItem.customView.width = 60;
    UIBarButtonItem *searchItem = [UIBarButtonItem itemWithTarget:nil action:nil imageName:@"icon_search" highImage:@"icon_search_highlighted"];
    searchItem.customView.width = 60;

    self.navigationItem.rightBarButtonItems = @[mapItem, searchItem];
}

#pragma mark -- 顶部按钮点击方法
- (void)kindBtnClick
{
    UIPopoverController *popver = [[UIPopoverController alloc] initWithContentViewController:[[MTKindViewController alloc] init]];
    [popver presentPopoverFromBarButtonItem:self.kindItem permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
}
- (void)districtBtnClick
{
    
    NSLog(@"districtBtnClick");
}
- (void)sortBtnClick
{
    
    NSLog(@"sortBtnClick");
}

@end
