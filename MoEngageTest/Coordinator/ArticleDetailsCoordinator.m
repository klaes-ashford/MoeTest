//
//  ArticleDetailsCoordinator.m
//  MoEngageTest
//
//  Created by Aswin Koramanghat on 14/08/20.
//  Copyright © 2020 Bounce. All rights reserved.
//

#import "ArticleDetailsCoordinator.h"
#import "MENewsResponse.h"
#import <UIKit/UIKit.h>

@implementation ArticleDetailsCoordinator

- (instancetype)initWith:(UINavigationController *) presenter :(MEArticle *) article :(ArticleDetailsSource *) detailsSource
{
    self = [super init];
    if (self) {
        self.viewController = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
        self.viewController.article = article;
        self.article = article;
        self.presenter = presenter;
        self.detailsSource = detailsSource;
    }
    return self;
}

- (void)start {
    self.viewController.request = [self.detailsSource getArticle:self.article];
    self.viewController.delegate = self;
    [self.presenter pushViewController:self.viewController animated:true];
}

- (void)storeOffline {
    [self.detailsSource storeOffline:self.article];
}

@end
