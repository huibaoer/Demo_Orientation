//
//  SecondViewController.m
//  OrientationDemo
//
//  Created by zhanght on 2016/12/2.
//  Copyright © 2016年 zhanght. All rights reserved.
//

#import "SecondViewController.h"
#import "MainManager.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor grayColor];
}

- (IBAction)rotationAction:(id)sender {
    if ([MainManager sharedInstance].orientation == UIInterfaceOrientationPortrait) {
        [[MainManager sharedInstance] forceChangeDeviceOrientation:UIInterfaceOrientationLandscapeRight];
    } else {
        [[MainManager sharedInstance] forceChangeDeviceOrientation:UIInterfaceOrientationPortrait];
    }
}

- (IBAction)presentAction:(id)sender {
    SecondViewController *second = [[SecondViewController alloc] init];
    [self presentViewController:second animated:YES completion:nil];
}

- (IBAction)pushAction:(id)sender {
    SecondViewController *second = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:second animated:YES];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"-- ht log -- %d", [MainManager sharedInstance].orientation);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    if (self.navigationController) {
        [self.navigationController popViewControllerAnimated:YES];
    } else {
        [self dismissViewControllerAnimated:YES completion:nil];
    }
    
    if ([MainManager sharedInstance].orientation == UIInterfaceOrientationLandscapeRight) {
        [[MainManager sharedInstance] forceChangeDeviceOrientation:UIInterfaceOrientationPortrait];
    }
}


@end
