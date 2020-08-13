//
//  ArticleTableViewCell.h
//  MoEngageTest
//
//  Created by Aswin Koramanghat on 12/08/20.
//  Copyright © 2020 Bounce. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ArticleTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *articleDescription;
@end

NS_ASSUME_NONNULL_END
