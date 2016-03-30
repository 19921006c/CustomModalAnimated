//
//  JTransition.m
//  UIAlertController
//
//  Created by silent on 16/3/30.
//  Copyright © 2016年 joe. All rights reserved.
//

#import "JTransition.h"
#import "JPresentationController.h"
#import "JAnimatedTransitioning.h"

@implementation JTransition
SingletonM(transition)

#pragma mark -UIViewControllerTransitioningDelegate

/**
 *  UIPresentationController
 *  modal前的控制器和modal后出来的控制器，都会由UIPresentationController管理
 *
 *  @param presented  modal后出来的控制器
 *  @param presenting modal前出来的控制器
 *  @param source
 *
 *  @return 返回自定义的UIPresentationController来管理modal
 */
-(UIPresentationController *)presentationControllerForPresentedViewController:(UIViewController *)presented presentingViewController:(UIViewController *)presenting sourceViewController:(UIViewController *)source
{
    return [[JPresentationController alloc]initWithPresentedViewController:presented presentingViewController:presenting];
}

/**
 *  这个方法来实现present动画效果
 *
 *  @param presented
 *  @param presenting
 *  @param source
 *
 *  @return 返回自定义的动画效果
 */
- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source
{
    //实例化自定义的动画
    JAnimatedTransitioning *animeted = [[JAnimatedTransitioning alloc]init];
    
    //标记是present
    animeted.presented = YES;
    
    //返回动画
    return animeted;
}

- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed
{
    //实例化自定义的动画
    JAnimatedTransitioning *animeted = [[JAnimatedTransitioning alloc]init];
    
    //标记是dismiss
    animeted.presented = NO;
    
    //返回动画
    return animeted;
}

@end
