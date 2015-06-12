//
//  CustomTableViewCell.m
//  StartAutoLayout
//
//  Created by songjian on 15/6/10.
//  Copyright (c) 2015年 songjian. All rights reserved.
//

#import "CustomTableViewCell.h"

@interface CustomTableViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *topImageView;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *labelToSuperView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *labelToImageView;


@end

@implementation CustomTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)configViewWithImage:(UIImage *)image text:(NSString *)text{
    
//    [self.contentView removeConstraint:_labelToImageView];
    if(image){
        _topImageView.hidden = NO;
/*solution 1*/
//        _labelToImageView.priority = 1000;
//        _labelToSuperView.priority = 999;
/*solution 2*/
//        _labelToImageView.active = YES;
/*solution 3*/
//        _labelToImageView = [NSLayoutConstraint constraintWithItem:_label
//                                                         attribute:NSLayoutAttributeTop
//                                                         relatedBy:NSLayoutRelationEqual
//                                                            toItem:_topImageView
//                                                         attribute:NSLayoutAttributeBottom
//                                                        multiplier:1.0
//                                                          constant:0];
    /*solution 4*/
        _labelToImageView.constant = 0;
    }else{
        _topImageView.hidden = YES;
//        _labelToImageView.priority = 999;
//        _labelToSuperView.priority = 1000;
//        _labelToImageView.active = NO;
//        _labelToImageView = [NSLayoutConstraint constraintWithItem:_label
//                                                         attribute:NSLayoutAttributeTop
//                                                         relatedBy:NSLayoutRelationEqual
//                                                            toItem:_topImageView
//                                                         attribute:NSLayoutAttributeTop
//                                                        multiplier:1.0
//                                                          constant:0];
        _labelToImageView.constant = -125;
    }
//    [self.contentView addConstraints:@[_labelToImageView]];
    _label.text = text;
    _topImageView.image = image;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    
}

+ (instancetype)getCell{
    return [[[NSBundle mainBundle] loadNibNamed:@"CustomTableViewCell" owner:self options:nil] objectAtIndex:0];
}

@end
