//
//  ArticleCacheSource.m
//  MoEngageTest
//
//  Created by Aswin Koramanghat on 14/08/20.
//  Copyright © 2020 Bounce. All rights reserved.
//

#import "ArticleDetailsCacheSource.h"
#import "MENewsResponse.h"

@implementation ArticleDetailsCacheSource

-(BOOL) isArticleAvailableOffline:( NSString *) filePath {
    return [NSData dataWithContentsOfFile:filePath] != nil;
}

-(NSString *) encodeToBase64With: (NSString *) urlString {
    NSData *nsdata = [urlString
                      dataUsingEncoding:NSUTF8StringEncoding];
    NSString *base64Encoded = [nsdata base64EncodedStringWithOptions:0];
    return base64Encoded;
}

-(NSString *) decodeFrom: (NSString *) base64String {
    NSData *nsdataFromBase64String = [[NSData alloc]
                                      initWithBase64EncodedString:base64String options:0];
    NSString *base64Decoded = [[NSString alloc]
                               initWithData:nsdataFromBase64String encoding:NSUTF8StringEncoding];
    return base64Decoded;
}

-(NSURL *) getCachedArticle:(MEArticle *) article {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *encodedUrl = [self encodeToBase64With:article.url];
    NSString *filePath = [[documentsDirectory stringByAppendingPathComponent:encodedUrl] stringByAppendingFormat:@".html"];
    if ([self isArticleAvailableOffline:filePath]) {
        NSURL *nsurl=[NSURL fileURLWithPath: filePath];
        return nsurl;
    } else {
        return nil;
    }
}

-(void) storeArticle:(MEArticle *) article {
    NSURL * url = [[NSURL alloc] initWithString:article.url];
    NSError * error;
    NSStringEncoding * encoding;
    NSString * htmlContent = [NSString stringWithContentsOfURL:url usedEncoding:&encoding error:&error];
    
    NSString *encodedUrl = [self encodeToBase64With:article.url];
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *filePath = [[documentsDirectory stringByAppendingPathComponent:encodedUrl] stringByAppendingFormat:@".html"];
    [[htmlContent dataUsingEncoding:NSUTF8StringEncoding] writeToFile:filePath atomically:true];
}



@end
