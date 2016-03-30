//
//  JAnimatedTransitioning.m
//  UIAlertController
//
//  Created by silent on 16/3/30.
//  Copyright © 2016年 joe. All rights reserved.
//

#import "JAnimatedTransitioning.h"

#define kDuration 1.0

@implementation JAnimatedTransitioning


#pragma mark - UIViewControllerAnimatedTransitioning

//设置动画时间
- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext
{
    return kDuration;
}

//设置动画效果
- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext
{
    if (self.presented) {//当前是presentd
        //拿到将要展示的view
        UIView *toView = [transitionContext viewForKey:UITransitionContextToViewKey];
        
        /**
         *  一个3D动画
         *
         *  @param M_PI_2 旋转角度
         *  @param 1      x轴坐标
         *  @param 1      y轴坐标
         *  @param 1      z轴坐标
         *
         *  @return
         */
        
        toView.layer.transform = CATransform3DMakeRotation(M_PI_2, 1, 1, 1);
        
        [UIView animateWithDuration:kDuration animations:^{
            //   UITransitionContextToViewKey
            //   UITransitionContextFromViewKey
            //还原动画
            toView.layer.transform = CATransform3DIdentity;
        }completion:^(BOOL finished) {
            //告诉present动画结束了，否则控制器上的控件无效
            [transitionContext completeTransition:YES];
        }];
    } else{//dismiss
        
        UIView *formView = [transitionContext viewForKey:UITransitionContextFromViewKey];
        
        [UIView animateWithDuration:kDuration animations:^{
            //   UITransitionContextToViewKey
            //   UITransitionContextFromViewKey
            
            formView.layer.transform = CATransform3DMakeRotation(M_PI_2, 1, 1, 1);
        }completion:^(BOOL finished) {
            
            [transitionContext completeTransition:YES];
        }];
    }
    
}

@end
