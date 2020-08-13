#import "MENewsResponse.h"

@implementation MENewsResponse : NSObject
- (instancetype)initWithDictionary:(NSDictionary*)dictionary {
    if (self = [super init]) {
        NSMutableArray *articles = [[NSMutableArray alloc] init];
        for (NSDictionary* item in dictionary[@"articles"]) {
            [articles addObject:[[MEArticle alloc] initWithDictionary: item]];
        }
        _articles = articles;
    }
    return self;
}
@end

@implementation MEArticle : NSObject
- (instancetype)initWithDictionary:(NSDictionary*)dictionary {
    if (self = [super init]) {
        _source = [[MESource alloc] initWithDictionary:dictionary[@"source"]];
        _author = dictionary[@"author"];
        _title = dictionary[@"title"];
        _theDescription = dictionary[@"description"];
        _url = dictionary[@"url"];
        _urlToImage = dictionary[@"urlToImage"];
        _publishedAt = dictionary[@"publishedAt"];
        _content = dictionary[@"content"];
    }
    return self;
}
@end

@implementation MESource : NSObject
- (instancetype)initWithDictionary:(NSDictionary*)dictionary {
    if (self = [super init]) {
        _identifier = dictionary[@"id"];
        _name = dictionary[@"name"];
    }
    return self;
}
@end
