//
//  MTKindViewController.m
//  团购HD
//
//  Created by 甘凌云 on 15/8/31.
//  Copyright (c) 2015年 甘凌云. All rights reserved.
//

#import "MTKindViewController.h"
#import "MTDropdown.h"
#import "UIView+Extension.h"

@interface MTKindViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) MTDropdown *dropView;
@end

@implementation MTKindViewController

- (MTDropdown *)dropView
{
    if (!_dropView) {
        _dropView = [[MTDropdown alloc] initWithFrame:CGRectMake(0, 0, 288, 340)];
        _dropView.mainTabelView.delegate = self;
        _dropView.mainTabelView.dataSource = self;
        _dropView.subTableView.delegate = self;
        _dropView.subTableView.dataSource = self;
    }
    return _dropView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.preferredContentSize = self.dropView.size;
    [self.view addSubview:self.dropView];
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    NSLog(@"%@", NSStringFromCGRect(self.dropView.frame));
}

#pragma mark -- <UITableViewDataSource>
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}
@end
