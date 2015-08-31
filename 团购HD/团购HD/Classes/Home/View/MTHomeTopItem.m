//
//  MTHomeTopItem.m
//  团购HD
//
//  Created by 甘凌云 on 15/8/31.
//  Copyright (c) 2015年 甘凌云. All rights reserved.
//

#import "MTHomeTopItem.h"

@interface MTHomeTopItem ()
@property (weak, nonatomic) IBOutlet UIButton *btn;

@end

@implementation MTHomeTopItem

+ (instancetype)item
{
    return [[[NSBundle mainBundle] loadNibNamed:@"MTHomeTopItem" owner:nil options:nil] lastObject];
}

- (void)awakeFromNib
{
    self.autoresizingMask = UIViewAutoresizingNone;
    
}


- (void)addTarget:(id)target action:(SEL)action
{
    [self.btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
}

@end
