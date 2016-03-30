//
//  SecondViewController.m
//  CustomModalAnimated
//
//  Created by silent on 16/3/30.
//  Copyright © 2016年 joe. All rights reserved.
//

#import "SecondViewController.h"

@implementation SecondViewController

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor orangeColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
