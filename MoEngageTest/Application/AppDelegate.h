//
//  AppDelegate.h
//  MoEngageTest
//
//  Created by Bounce on 05/08/20.
//  Copyright © 2020 Bounce. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppCoordinator.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (strong, nonatomic) UIWindow * window;
@property (strong, nonatomic) AppCoordinator * coordinator;
@end

