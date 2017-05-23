//
//  MainManager.m
//  OrientationDemo
//
//  Created by zhanght on 2016/12/2.
//  Copyright © 2016年 zhanght. All rights reserved.
//

#import "MainManager.h"


@implementation MainManager

+ (instancetype)sharedInstance {
    static MainManager *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[MainManager alloc] init];
        //orientation
        instance->_shouldAutorotate = NO;
        instance->_orientation = UIInterfaceOrientationPortrait;
    });
    return instance;
}

- (void)forceChangeDeviceOrientation:(UIInterfaceOrientation)orientation {
    //开启旋转
    _shouldAutorotate = YES;
    
    if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
        SEL selector             = NSSelectorFromString(@"setOrientation:");
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[UIDevice instanceMethodSignatureForSelector:selector]];
        [invocation setSelector:selector];
        [invocation setTarget:[UIDevice currentDevice]];
        int val                  = orientation;
        [invocation setArgument:&val atIndex:2];
        [invocation invoke];
    }
    //关闭旋转
    _shouldAutorotate = NO;
    _orientation = orientation;
}

@end
