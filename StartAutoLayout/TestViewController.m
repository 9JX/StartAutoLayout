//
//  TestViewController.m
//  StartAutoLayout
//
//  Created by songjian on 15/6/12.
//  Copyright (c) 2015年 songjian. All rights reserved.
//

#import "TestViewController.h"
#import "CustomView.h"

@interface TestViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *labelToImage;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet CustomView *customView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *customView_constraint_width;

- (IBAction)btnAction:(id)sender;
@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
 
//    [self.view updateConstraints];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnAction:(id)sender {
    [self.view removeConstraint:_labelToImage];
    _labelToImage = [NSLayoutConstraint constraintWithItem:_label
                                                 attribute:NSLayoutAttributeTop
                                                 relatedBy:NSLayoutRelationEqual
                                                    toItem:_imageView
                                                 attribute:NSLayoutAttributeBottom
                                                multiplier:1.0
                                                  constant:100];
    [self.view addConstraint:_labelToImage];
    
//    [_customView removeConstraint:_customView.constraint];
//    NSArray * constraint_POS_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-50-[redView]"
//                                                                         options:0
//                                                                         metrics:nil
//                                                                           views:@{@"redView":_customView.redView}];
//    _customView.constraint = constraint_POS_V[0];
//    [_customView addConstraints:constraint_POS_V];
//    [_customView removeConstraint:_customView_constraint_width];
    _customView_constraint_width.constant = 250;
    [UIView animateWithDuration:0.5
                     animations:^{
                         [_customView.superview layoutIfNeeded];
                     }];
    
//    [_customView addConstraint:_customView_constraint_width];
//    [_customView setNeedsUpdateConstraints];
}
@end
