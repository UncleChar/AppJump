//
//  ViewController.m
//  Singleton
//
//  Created by LingLi on 15/12/16.
//  Copyright © 2015年 LingLi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    NSString *name = @"UncleChar";
    NSString *paw = @"123456";
    NSUserDefaults * defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:name
                 forKey:@"userName"];
    
    [defaults setObject:paw
                 forKey:@"pwd"];
    [defaults synchronize];
    
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
