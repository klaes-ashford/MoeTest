//
//  ArticlesCoordinator.m
//  MoEngageTest
//
//  Created by Aswin Koramanghat on 13/08/20.
//  Copyright © 2020 Bounce. All rights reserved.
//

#import "ArticlesCoordinator.h"
#import <UIKit/UIKit.h>
#import "ViewController.h"

@implementation ArticlesCoordinator

- (instancetype)initWith:(UINavigationController *) presenter;
{
    self = [super init];
    if (self) {
        self.presenter = presenter;
    }
    return self;
}

- (void)start {
    self.viewController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
    [self.presenter pushViewController:self.viewController animated:true];
}

@end
