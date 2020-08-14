//
//  ArticleDetailsSource.h
//  MoEngageTest
//
//  Created by Aswin Koramanghat on 14/08/20.
//  Copyright © 2020 Bounce. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MENewsResponse.h"

NS_ASSUME_NONNULL_BEGIN

@interface ArticleDetailsSource : NSObject
-(void) storeOffline:(MEArticle *) article;
-(NSURLRequest *) getArticle:(MEArticle *) article;
@end

NS_ASSUME_NONNULL_END
