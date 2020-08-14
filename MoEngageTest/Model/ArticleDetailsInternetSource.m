//
//  ArticleDetailsInternetSource.m
//  MoEngageTest
//
//  Created by Aswin Koramanghat on 14/08/20.
//  Copyright © 2020 Bounce. All rights reserved.
//

#import "ArticleDetailsInternetSource.h"
#import "MENewsResponse.h"

@implementation ArticleDetailsInternetSource
-(NSURL *) getArticleDetails:(MEArticle *) article {
    NSURL *nsurl=[NSURL URLWithString: article.url];
    return nsurl;
}

@end
