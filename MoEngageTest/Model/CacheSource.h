//
//  CacheSource.h
//  MoEngageTest
//
//  Created by Aswin Koramanghat on 13/08/20.
//  Copyright © 2020 Bounce. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Source.h"
NS_ASSUME_NONNULL_BEGIN

@interface CacheSource : NSObject <Source>
-(void) storeJson:(NSData *) data;
-(BOOL) isCacheAvailable;
@end

NS_ASSUME_NONNULL_END
