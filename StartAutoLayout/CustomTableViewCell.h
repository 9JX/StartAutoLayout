//
//  CustomTableViewCell.h
//  StartAutoLayout
//
//  Created by songjian on 15/6/10.
//  Copyright (c) 2015年 songjian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell

+ (instancetype)getCell;

- (void)configViewWithImage:(UIImage *)image text:(NSString *)text;

@end
