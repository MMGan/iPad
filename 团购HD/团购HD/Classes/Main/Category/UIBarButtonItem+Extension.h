//
//  UIBarButtonItem+Extension.h
//  团购HD
//
//  Created by 甘凌云 on 15/8/31.
//  Copyright (c) 2015年 甘凌云. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)
+ (instancetype)itemWithTarget:(id)target action:(SEL)action imageName:(NSString *)imageName highImage:(NSString *)highImage;
@end
