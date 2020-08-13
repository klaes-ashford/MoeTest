//
//  Source.h
//  MoEngageTest
//
//  Created by Bounce on 05/08/20.
//  Copyright © 2020 Bounce. All rights reserved.
//

#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN

@protocol Source <NSObject>
- (void) getNews: (void (^)(NSDictionary *, NSError *)) completion;
@end

NS_ASSUME_NONNULL_END
