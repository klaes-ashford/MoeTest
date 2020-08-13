//
//  ArticleSource.m
//  MoEngageTest
//
//  Created by Aswin Koramanghat on 13/08/20.
//  Copyright © 2020 Bounce. All rights reserved.
//

#import "ArticleSource.h"
#import "InternetSource.h"
#import "CacheSource.h"
@implementation ArticleSource {
    InternetSource *internetSource;
    CacheSource *cacheSource;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        internetSource = [[InternetSource alloc] init];
        cacheSource = [[CacheSource alloc] init];
    }
    return self;
}

- (void)getNews:(nonnull void (^)(NSDictionary *, NSError *))completion {
    if ([cacheSource isCacheAvailable]) {
         [cacheSource getNews: completion];
    } else {
        [internetSource getNews:^(NSDictionary * dictionary, NSError * error) {
            if (dictionary != nil) {
                NSData *dataFromDict = [NSJSONSerialization dataWithJSONObject:dictionary
                options:NSJSONWritingPrettyPrinted
                  error:&error];
                [self->cacheSource storeJson:dataFromDict];
                completion(dictionary, nil);
            } else {
                completion(nil, nil);
            }
        }];
    }
}

@end
