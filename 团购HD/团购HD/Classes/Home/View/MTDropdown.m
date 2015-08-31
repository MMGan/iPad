//
//  MTDropdown.m
//  团购HD
//
//  Created by 甘凌云 on 15/8/31.
//  Copyright (c) 2015年 甘凌云. All rights reserved.
//

#import "MTDropdown.h"

@implementation MTDropdown
- (instancetype)initWithFrame:(CGRect)frame
{
    MTDropdown *view = [[[NSBundle mainBundle] loadNibNamed:@"MTDropdown" owner:nil options:nil] lastObject];
    view.frame = frame;
//    view.mainTabelView.backgroundColor = [UIColor blueColor];
//    view.subTableView.backgroundColor = [UIColor orangeColor];
    return view;
}

+ (instancetype)dropDown
{
    return [[[NSBundle mainBundle] loadNibNamed:@"MTDropdown" owner:nil options:nil] lastObject];
}

- (void)awakeFromNib
{
    self.autoresizingMask = UIViewAutoresizingNone;
}

@end
