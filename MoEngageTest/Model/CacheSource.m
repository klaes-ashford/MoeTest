//
//  CacheSource.m
//  MoEngageTest
//
//  Created by Aswin Koramanghat on 13/08/20.
//  Copyright © 2020 Bounce. All rights reserved.
//

#import "CacheSource.h"

@implementation CacheSource {
    NSData *data;
}

- (void)getNews:(nonnull void (^)(NSDictionary *, NSError *))completion {
    NSData *data = [self getCachedData];
    if (data != nil) {
        NSDictionary *jsonDic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
        if (jsonDic) {
            completion(jsonDic, nil);
        }
        NSLog(@"response from api is %@", data);
    } else {
        completion(nil, nil);
    }
}

-(NSData *) getCachedData {
    if (data == nil) {
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
        NSString *documentsDirectory = [paths objectAtIndex:0];
        NSString *filePath = [documentsDirectory stringByAppendingPathComponent:@"news.json"];
        data = [NSData dataWithContentsOfFile:filePath];
    }
    return data;
}

-(BOOL) isCacheAvailable {
    if (data == nil) {
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
        NSString *documentsDirectory = [paths objectAtIndex:0];
        NSString *filePath = [documentsDirectory stringByAppendingPathComponent:@"news.json"];
        data = [NSData dataWithContentsOfFile:filePath];
    }
    return data != nil;
}


-(void) storeJson:(NSData *) data {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *filePath = [documentsDirectory stringByAppendingPathComponent:@"news.json"];
    [data writeToFile:filePath atomically:true];
}

@end
