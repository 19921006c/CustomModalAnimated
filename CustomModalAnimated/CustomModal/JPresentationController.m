//
//  JPresentationController.m
//  UIAlertController
//
//  Created by silent on 16/3/30.
//  Copyright © 2016年 joe. All rights reserved.
//

#import "JPresentationController.h"

@implementation JPresentationController

//- (CGRect)frameOfPresentedViewInContainerView
//{
//    return CGRectInset(self.containerView.bounds, 10, 50);
//}

- (void)presentationTransitionWillBegin
{
    //
    self.presentedView.frame = self.containerView.bounds;
    [self.containerView addSubview:self.presentedView];
}
- (void)presentationTransitionDidEnd:(BOOL)completed
{

}
- (void)dismissalTransitionWillBegin
{

}
- (void)dismissalTransitionDidEnd:(BOOL)completed
{
    [self.presentedView removeFromSuperview];
}

@end
