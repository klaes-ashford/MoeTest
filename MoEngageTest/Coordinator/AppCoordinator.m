//
//  AppCoordinator.m
//  MoEngageTest
//
//  Created by Aswin Koramanghat on 13/08/20.
//  Copyright © 2020 Bounce. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppCoordinator.h"
#import "ViewController.h"

@implementation AppCoordinator 

- (instancetype)initWith:(UIWindow *) window {
    self = [super init];
    if (self) {
        self.window = window;
        self.rootViewController = [[UINavigationController alloc]init];
        self.coordinator = [[ArticlesCoordinator alloc] initWith: self.rootViewController];
    }
    return self;
}

- (void)start {
    self.window.rootViewController = self.rootViewController;
    [self.coordinator start];
    [self.window makeKeyAndVisible];
}

@end
