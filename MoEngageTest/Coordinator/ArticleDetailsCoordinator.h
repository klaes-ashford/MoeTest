//
//  ArticleDetailsCoordinator.h
//  MoEngageTest
//
//  Created by Aswin Koramanghat on 14/08/20.
//  Copyright © 2020 Bounce. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Coordinator.h"
#import "MENewsResponse.h"
#import <UIKit/UIKit.h>
#import "DetailViewController.h"
#import "ArticleListDelegate.h"
#import "ArticleDetailsSource.h"
#import "ArticleOfflineDelegate.h"
NS_ASSUME_NONNULL_BEGIN

@interface ArticleDetailsCoordinator : NSObject <Coordinator,  ArticleOfflineDelegate>
- (instancetype)initWith:(UINavigationController *) presenter :(MEArticle *) article :(ArticleDetailsSource *) detailsSource;
@property (strong, nonatomic) UINavigationController * presenter;
@property (strong, nonatomic) MEArticle * article;
@property (strong, nonatomic) DetailViewController * viewController;
@property (strong, nonatomic) ArticleDetailsSource *detailsSource;
@end

NS_ASSUME_NONNULL_END
