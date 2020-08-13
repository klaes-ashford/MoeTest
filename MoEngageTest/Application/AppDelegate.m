//
//  AppDelegate.m
//  MoEngageTest
//
//  Created by Bounce on 05/08/20.
//  Copyright © 2020 Bounce. All rights reserved.
//

#import "AppDelegate.h"
#import <UIKit/UIKit.h>

@interface AppDelegate ()
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.coordinator = [[AppCoordinator alloc] initWith:self.window];
    [self.coordinator start];
    return YES;
}
@end
