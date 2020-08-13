//
//  AppCoordinator.h
//  MoEngageTest
//
//  Created by Aswin Koramanghat on 13/08/20.
//  Copyright © 2020 Bounce. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Coordinator.h"
#import "ArticlesCoordinator.h"
NS_ASSUME_NONNULL_BEGIN

@interface AppCoordinator : NSObject <Coordinator>
- (instancetype)initWith:(UIWindow *) window;
@property (strong, nonatomic) UINavigationController *rootViewController;
@property (strong, nonatomic) ArticlesCoordinator *coordinator;
@property (strong, nonatomic) UIWindow *window;
@end

NS_ASSUME_NONNULL_END
