//
//  BaseNavigaitonController.m
//  OrientationDemo
//
//  Created by zhanght on 2016/12/2.
//  Copyright © 2016年 zhanght. All rights reserved.
//

#import "BaseNavigaitonController.h"
#import "MainManager.h"
#import "SecondViewController.h"

@interface BaseNavigaitonController ()

@end

@implementation BaseNavigaitonController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (BOOL)shouldAutorotate {
    return self.topViewController.shouldAutorotate;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return self.topViewController.supportedInterfaceOrientations;
}



@end
