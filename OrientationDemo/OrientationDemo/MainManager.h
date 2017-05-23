//
//  MainManager.h
//  OrientationDemo
//
//  Created by zhanght on 2016/12/2.
//  Copyright © 2016年 zhanght. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainManager : NSObject
@property (nonatomic, assign, readonly) BOOL shouldAutorotate;
@property (nonatomic, assign, setter=forceChangeDeviceOrientation:) UIInterfaceOrientation orientation;

+ (instancetype)sharedInstance;

- (void)forceChangeDeviceOrientation:(UIInterfaceOrientation)orientation;

@end
