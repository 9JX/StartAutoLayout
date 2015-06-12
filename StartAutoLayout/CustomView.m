//
//  CustomView.m
//  StartAutoLayout
//
//  Created by songjian on 15/6/12.
//  Copyright (c) 2015年 songjian. All rights reserved.
//

#import "CustomView.h"

@interface CustomView ()
{
    BOOL _hasLoadedConstraints;
}

@end

@implementation CustomView

#pragma mark - property

- (UIView *)redView{
    if(_redView == nil){
        _redView = [[UIView alloc] init];
        _redView.translatesAutoresizingMaskIntoConstraints = NO;
        _redView.backgroundColor = [UIColor redColor];
    }
    return _redView;
}

- (UIView *)yellowView{
    if(_yellowView == nil){
        _yellowView = [[UIView alloc] init];
        _yellowView.translatesAutoresizingMaskIntoConstraints = NO;
        _yellowView.backgroundColor = [UIColor yellowColor];
    }
    return _yellowView;
}

#pragma mark - life

- (instancetype)init{
    if(self = [super init]){
        [self setupView];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder{
    if(self = [super initWithCoder:aDecoder]){
        [self setupView];
    }
    return self;
}

- (void)setupView{
    self.backgroundColor = [UIColor lightGrayColor];
    [self addSubview:self.redView];
    [self addSubview:self.yellowView];
}

- (void)updateConstraints{
    
    if(_hasLoadedConstraints){
        [super updateConstraints];
        return;
    }else{
        _hasLoadedConstraints = YES;
    }
    
    NSDictionary * viewDictionary = @{@"redView":   self.redView,
                                      @"yellowView":self.yellowView};
    NSArray * redView_constraint_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[redView(100)]"
                                                                             options:0
                                                                             metrics:nil
                                                                               views:viewDictionary];
    NSArray * redView_constraint_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[redView(50)]"
                                                                             options:0
                                                                             metrics:nil
                                                                               views:viewDictionary];
    [self.redView addConstraints:redView_constraint_H];
    [self.redView addConstraints:redView_constraint_V];
    
    NSArray * yellowView_constraint_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[yellowView(100)]"
                                                                             options:0
                                                                             metrics:nil
                                                                               views:viewDictionary];
    NSArray * yellowView_constraint_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[yellowView(50)]"
                                                                             options:0
                                                                             metrics:nil
                                                                               views:viewDictionary];
    [self.yellowView addConstraints:yellowView_constraint_H];
    [self.yellowView addConstraints:yellowView_constraint_V];
    
    NSArray * constraint_POS_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[redView]"//默认8
                                                                         options:NSLayoutFormatAlignAllTop
                                                                         metrics:nil
                                                                           views:viewDictionary];
    NSArray * yellow_constraint_POS_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[yellowView]-20-|"
                                                                         options:NSLayoutFormatAlignAllTop
                                                                         metrics:nil
                                                                           views:viewDictionary];
    NSArray * yellow_constraint_POS_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-20-[yellowView]"
                                                                                options:NSLayoutFormatAlignAllTop
                                                                                metrics:nil
                                                                                  views:viewDictionary];
    NSArray * constraint_POS_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-20-[redView]"
                                                                         options:0
                                                                         metrics:nil
                                                                           views:viewDictionary];
//    _constraint = constraint_POS_V[0];
    [self addConstraints:constraint_POS_H];
    [self addConstraints:constraint_POS_V];
    [self addConstraints:yellow_constraint_POS_H];
    [self addConstraints:yellow_constraint_POS_V];
    [super updateConstraints];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
