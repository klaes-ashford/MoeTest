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

NS_ASSUME_NONNULL_BEGIN

@interface ArticleDetailsCoordinator : NSObject <Coordinator>
- (instancetype)initWith:(UINavigationController *) presenter :(MEArticle *) article;
@property (strong, nonatomic) UINavigationController * presenter;
@property (strong, nonatomic) MEArticle * article;
@property (strong, nonatomic) DetailViewController * viewController;
@end

NS_ASSUME_NONNULL_END
