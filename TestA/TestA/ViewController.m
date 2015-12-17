//
//  ViewController.m
//  TestA
//
//  Created by LingLi on 15/12/17.
//  Copyright © 2015年 LingLi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
//    [[UIApplication sharedApplication]
//                        canOpenURL:[NSURL URLWithString:@"TestB.scheme2://"]];
    NSURL * myURL_APP_A = [NSURL URLWithString:@"TestB.scheme2://"];
    if ([[UIApplication sharedApplication] canOpenURL:myURL_APP_A]) {
        NSLog(@"canOpenURL");
        [[UIApplication sharedApplication] openURL:myURL_APP_A];
    }


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
