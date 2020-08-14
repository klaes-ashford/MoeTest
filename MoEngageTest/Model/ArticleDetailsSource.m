//
//  ArticleDetailsSource.m
//  MoEngageTest
//
//  Created by Aswin Koramanghat on 14/08/20.
//  Copyright © 2020 Bounce. All rights reserved.
//

#import "ArticleDetailsSource.h"
#import "ArticleDetailsInternetSource.h"
#import "ArticleDetailsCacheSource.h"

@implementation ArticleDetailsSource {
    ArticleDetailsInternetSource *internetSource;
    ArticleDetailsCacheSource *offlineSource;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        offlineSource = [[ArticleDetailsCacheSource alloc] init];
        internetSource = [[ArticleDetailsInternetSource alloc] init];
    }
    return self;
}

-(NSURLRequest *) getArticle:(MEArticle *) article {
    NSURL* url = [offlineSource getCachedArticle:article];
    if (url != nil) {
        return [NSURLRequest requestWithURL:url];
    } else {
        NSURL* url =  [internetSource getArticleDetails:article];
        return [NSURLRequest requestWithURL:url];
    }
}

-(void) storeOffline:(MEArticle *) article {
    [offlineSource storeArticle:article];
}

@end
