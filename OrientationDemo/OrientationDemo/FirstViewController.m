//
//  FirstViewController.m
//  OrientationDemo
//
//  Created by zhanght on 2016/12/2.
//  Copyright © 2016年 zhanght. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "MainManager.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor orangeColor];
    
}

- (IBAction)pushAction:(id)sender {
    SecondViewController *second = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:second animated:YES];
}

- (IBAction)presentAction:(id)sender {
    SecondViewController *second = [[SecondViewController alloc] init];
    [self presentViewController:second animated:YES completion:nil];
}


- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"-- ht log -- %d", [MainManager sharedInstance].orientation);
}




@end
