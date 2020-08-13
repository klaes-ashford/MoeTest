//
//  InternetSource.m
//  MoEngageTest
//
//  Created by Bounce on 05/08/20.
//  Copyright © 2020 Bounce. All rights reserved.
//

#import "InternetSource.h"

@implementation InternetSource {
    NSURL * url;
}

-(void) setupUrlSources {
    url = [[NSURL alloc] initWithString:@"https://moedemo-93e2e.firebaseapp.com/assignment/NewsApp/articles.json"];
}
 
- (void) getNews: (void (^)(NSDictionary *, NSError *)) completion {
    [self setupUrlSources];
    [[[NSURLSession sharedSession] dataTaskWithURL: url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSDictionary *jsonDic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
        if (jsonDic) {
            completion(jsonDic, nil);
        } else {
            completion(nil, error);
        }
        NSLog(@"response from api is %@", data);
    }] resume];
}

@end
