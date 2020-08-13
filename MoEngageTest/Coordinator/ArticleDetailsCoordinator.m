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

- (instancetype)initWith:(UINavigationController *) presenter :(MEArticle *) article
{
    self = [super init];
    if (self) {
        self.viewController = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
        self.article = article;
        self.presenter = presenter;
    }
    return self;
}

- (void)start { 
    [self.presenter pushViewController:self.viewController animated:true];
}

@end
