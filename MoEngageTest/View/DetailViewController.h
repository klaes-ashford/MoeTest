//
//  DetailViewController.h
//  MoEngageTest
//
//  Created by Aswin Koramanghat on 14/08/20.
//  Copyright © 2020 Bounce. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MENewsResponse.h"
#import "ArticleOfflineDelegate.h"
NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController
@property (strong, nonatomic) MEArticle * article;
@property (strong, nonatomic) UIActivityIndicatorView * activity;
@property (strong, nonatomic) NSURLRequest * request;
@property (nonatomic) id <ArticleOfflineDelegate> delegate;
@end

NS_ASSUME_NONNULL_END
