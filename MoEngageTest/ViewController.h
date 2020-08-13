//
//  ViewController.h
//  MoEngageTest
//
//  Created by Bounce on 05/08/20.
//  Copyright © 2020 Bounce. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Source.h"
@interface ViewController : UIViewController
@end

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableveiw;
@property (nonatomic) id <Source> source;
@end
