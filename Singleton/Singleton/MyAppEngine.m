//
//  MyAppEngine.m
//  Singleton
//
//  Created by LingLi on 15/12/16.
//  Copyright © 2015年 LingLi. All rights reserved.
//

#import "MyAppEngine.h"
#import "User.h"
static MyAppEngine *sharedObj = nil;

@implementation MyAppEngine

+ (instancetype)sharedInstance {

    @synchronized(self) {
        
        if (sharedObj == nil) {
            
          sharedObj = [[self alloc]init];
        }
    }
    
    return sharedObj;
}

+ (id)allocWithZone:(struct _NSZone *)zone {
    @synchronized (self) {
        if (sharedObj == nil) {
            sharedObj = [super allocWithZone:zone];
            return sharedObj;
        }
    }
    return nil;
}


- (id) copyWithZone:(NSZone *)zone //第四步
{
    return self;
}

- (id)init {

    if(self = [super init]) {
        
        _user = [[User alloc]init];
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        NSString *userName = nil;
        NSString *password = nil;
        userName = [userDefaults objectForKey:@"userName"];
        password = [userDefaults objectForKey:@"pwd"];
        _user.name = userName;
        _user.pwd = password;

        
    }
    return self;
}

@end
