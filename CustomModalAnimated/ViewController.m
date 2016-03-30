//
//  ViewController.m
//  CustomModalAnimated
//
//  Created by silent on 16/3/30.
//  Copyright © 2016年 joe. All rights reserved.
//

#import "ViewController.h"
#import "JTransition.h"
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    SecondViewController *vc = [[SecondViewController alloc]init];
    
    //1.设置 vc.modalPresentationStyle =UIModalPresentationCustom
    vc.modalPresentationStyle = UIModalPresentationCustom;
    //2.设置 vc.transitioningDelegate = [JTransition sharedtransition]    将transitioningDelegate代理交给JTransition
    //此处使用单例，因为transitioningDelegate是weak
    vc.transitioningDelegate = [JTransition sharedtransition];
    
    [self presentViewController:vc animated:YES completion:nil];
}

@end
