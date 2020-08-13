// MENewsResponse.m

// MENewsResponse.h

#import <Foundation/Foundation.h>

@class MENewsResponse;
@class MEArticle;
@class MESource;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Object interfaces

@interface MENewsResponse : NSObject
@property (nonatomic, copy) NSString *status;
@property (nonatomic, copy) NSArray<MEArticle *> *articles;
- (instancetype)initWithDictionary:(NSDictionary*)dictionary;
@end

@interface MEArticle : NSObject
@property (nonatomic, strong)         MESource *source;
@property (nonatomic, nullable, copy) NSString *author;
@property (nonatomic, copy)           NSString *title;
@property (nonatomic, copy)           NSString *theDescription;
@property (nonatomic, copy)           NSString *url;
@property (nonatomic, copy)           NSString *urlToImage;
@property (nonatomic, copy)           NSString *publishedAt;
@property (nonatomic, nullable, copy) NSString *content;
- (instancetype)initWithDictionary:(NSDictionary*)dictionary;
@end

@interface MESource : NSObject
@property (nonatomic, nullable, copy) NSString *identifier;
@property (nonatomic, copy)           NSString *name;
- (instancetype)initWithDictionary:(NSDictionary*)dictionary;
@end

NS_ASSUME_NONNULL_END



