//
//  MockSource.m
//  MoEngageTest
//
//  Created by Bounce on 06/08/20.
//  Copyright © 2020 Bounce. All rights reserved.
//

#import "MockSource.h"

@implementation MockSource

- (void)getNews:(nonnull void (^)(NSDictionary * _Nonnull, NSError * _Nullable))completion {
    NSData *data = [self getMockData];
    NSDictionary *jsonDic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    if (jsonDic) {
        completion(jsonDic, nil);
    }
}

-(NSData *) getMockData {
    NSString *str = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"news.json"];
    NSData* data = [NSData dataWithContentsOfFile:str];
    return data;
}

@end
