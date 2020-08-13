//
//  ArticlesCoordinator.h
//  MoEngageTest
//
//  Created by Aswin Koramanghat on 13/08/20.
//  Copyright © 2020 Bounce. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Coordinator.h"
#import "ArticleSource.h"
#import "Source.h"
#import "ViewController.h"
#import "ArticleListDelegate.h"
#import "ArticleDetailsCoordinator.h"
NS_ASSUME_NONNULL_BEGIN

@interface ArticlesCoordinator : NSObject <Coordinator, ArticleListDelegate>
- (instancetype)initWith:(UINavigationController *) presenter;
@property (strong, nonatomic) UINavigationController * presenter;
@property (strong, nonatomic) ViewController * viewController;
@property (nonatomic) id <Source> source;
@property (strong, nonatomic) ArticleDetailsCoordinator *detailsCoordinator;
@end

NS_ASSUME_NONNULL_END
