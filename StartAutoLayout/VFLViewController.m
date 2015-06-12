//
//  VFLViewController.m
//  StartAutoLayout
//
//  Created by songjian on 15/6/11.
//  Copyright (c) 2015年 songjian. All rights reserved.
//

/*
 "H:[element(100)]"
 "V:[element(100)]"
 
 */

#import "VFLViewController.h"

@interface VFLViewController ()
@property (nonatomic, strong) UIView *redView;
@property (nonatomic, strong) UIView *yellowView;

@end

@implementation VFLViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setupViews];
//    [self example_1];
//    [self example_2];
//    [self example_3];
    [self example_4];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*Initial views setup*/

- (void)setupViews{
    self.redView = [[UIView alloc] init];
    self.redView.translatesAutoresizingMaskIntoConstraints = NO;
    self.redView.backgroundColor = [UIColor colorWithRed:0.95 green:0.47 blue:0.48 alpha:1.0];
    
    self.yellowView = [[UIView alloc] init];
    self.yellowView.translatesAutoresizingMaskIntoConstraints = NO;
    self.yellowView.backgroundColor = [UIColor colorWithRed:1.00 green:0.83 blue:0.58 alpha:1.0];
    
    [self.view addSubview:self.redView];
    [self.view addSubview:self.yellowView];
}

/*Example 1*/

- (void)example_1{
//    UIView * redView = self.redView;
//    NSDictionary *viewsDictionary = NSDictionaryOfVariableBindings(redView);
    NSDictionary *viewsDictionary = @{@"redView":self.redView};
    NSArray *constraint_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[redView(100)]" options:0 metrics:nil views:viewsDictionary];
    NSArray *constraint_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[redView(50)]" options:0 metrics:nil views:viewsDictionary];
    [self.redView addConstraints:constraint_H];
    [self.redView addConstraints:constraint_V];
    
    NSArray *constraint_POS_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-80-[redView]"
                                                                        options:0
                                                                        metrics:nil
                                                                          views:viewsDictionary];
    NSArray *constraint_POS_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[redView]"
                                                                        options:0
                                                                        metrics:nil
                                                                          views:viewsDictionary];
    [self.view addConstraints:constraint_POS_H];
    [self.view addConstraints:constraint_POS_V];
    
    
    
}

- (void)example_2{
    NSDictionary * viewsDictionary = @{@"redView":    self.redView,
                                       @"yellowView": self.yellowView};
    NSArray * redView_constraint_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[redView(100)]"
                                                                             options:0
                                                                             metrics:nil
                                                                               views:viewsDictionary];
    NSArray *redView_constraint_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[redView(50)]"
                                                                            options:0
                                                                            metrics:nil
                                                                              views:viewsDictionary];
    [self.redView addConstraints:redView_constraint_H];
    [self.redView addConstraints:redView_constraint_V];
    
    NSArray * yellow_constraint_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[yellowView(100)]"
                                                                            options:0
                                                                            metrics:nil
                                                                              views:viewsDictionary];
    NSArray * yellow_constraint_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[yellowView(100)]"
                                                                            options:0
                                                                            metrics:nil
                                                                              views:viewsDictionary];
    [self.yellowView addConstraints:yellow_constraint_H];
    [self.yellowView addConstraints:yellow_constraint_V];
    
    NSArray * constraint_POS_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-30-[redView]-20-[yellowView]"
                                                                         options:0
                                                                         metrics:nil
                                                                           views:viewsDictionary];
    NSArray * constraint_POS_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-80-[redView]-20-[yellowView]"
                                                                         options:0
                                                                         metrics:nil
                                                                           views:viewsDictionary];
    [self.view addConstraints:constraint_POS_H];
    [self.view addConstraints:constraint_POS_V];
    
    
}

- (void)example_3{
    NSDictionary * viewsDictionary = @{@"redView":     self.redView,
                                       @"yellowView":  self.yellowView};
    NSArray * redView_contraint_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[redView(100)]"
                                                                            options:0
                                                                            metrics:nil
                                                                              views:viewsDictionary];
    NSArray * redView_contraint_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[redView(50)]"
                                                                            options:0
                                                                            metrics:nil
                                                                              views:viewsDictionary];
    [self.redView addConstraints:redView_contraint_H];
    [self.redView addConstraints:redView_contraint_V];
    
    NSArray * yellowView_constraint_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[yellowView(100)]"
                                                                                options:0
                                                                                metrics:nil
                                                                                  views:viewsDictionary];
    NSArray * yellowView_constraint_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[yellowView(50)]"
                                                                                options:0
                                                                                metrics:nil
                                                                                  views:viewsDictionary];
    [self.yellowView addConstraints:yellowView_constraint_H];
    [self.yellowView addConstraints:yellowView_constraint_V];
    
    NSArray * constraint_POS_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[redView]-20-[yellowView]"
                                                                         options:NSLayoutFormatAlignAllTop
                                                                         metrics:nil
                                                                           views:viewsDictionary];
    NSArray * constraint_POS_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-80-[redView]"
                                                                         options:0
                                                                         metrics:nil
                                                                           views:viewsDictionary];
    [self.view addConstraints:constraint_POS_H];
    [self.view addConstraints:constraint_POS_V];
}

- (void)example_4{
    NSDictionary * viewsDictionary = @{@"redView":     self.redView,
                                       @"yellowView":  self.yellowView};
    NSArray * redView_contraint_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[redView(100)]"
                                                                            options:0
                                                                            metrics:nil
                                                                              views:viewsDictionary];
    NSArray * redView_contraint_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[redView(50)]"
                                                                            options:0
                                                                            metrics:nil
                                                                              views:viewsDictionary];
    [self.redView addConstraints:redView_contraint_H];
    [self.redView addConstraints:redView_contraint_V];
    
    NSArray * yellowView_constraint_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[yellowView(100)]"
                                                                                options:0
                                                                                metrics:nil
                                                                                  views:viewsDictionary];
    NSArray * yellowView_constraint_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[yellowView(50)]"
                                                                                options:0
                                                                                metrics:nil
                                                                                  views:viewsDictionary];
    [self.yellowView addConstraints:yellowView_constraint_H];
    [self.yellowView addConstraints:yellowView_constraint_V];
    
    NSArray * constraint_POS_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[redView]"
                                                                         options:0
                                                                         metrics:nil
                                                                           views:viewsDictionary];
    NSArray * constraint_POS_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-80-[redView]"
                                                                         options:0
                                                                         metrics:nil
                                                                           views:viewsDictionary];
    NSLayoutConstraint * constraint = [NSLayoutConstraint constraintWithItem:self.yellowView
                                                                   attribute:NSLayoutAttributeTop
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:self.redView
                                                                   attribute:NSLayoutAttributeTop
                                                                  multiplier:1.0
                                                                    constant:0];
    [self.view addConstraints:@[constraint]];
    [self.view addConstraints:constraint_POS_H];
    [self.view addConstraints:constraint_POS_V];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
