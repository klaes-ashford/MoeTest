//
//  ArticleCacheSource.h
//  MoEngageTest
//
//  Created by Aswin Koramanghat on 14/08/20.
//  Copyright © 2020 Bounce. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MENewsResponse.h"

NS_ASSUME_NONNULL_BEGIN

@interface ArticleDetailsCacheSource : NSObject
-(NSURL *) getCachedArticle:(MEArticle *) article;
-(void) storeArticle:(MEArticle *) article;
@end

NS_ASSUME_NONNULL_END
