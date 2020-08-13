//
//  ViewController.m
//  MoEngageTest
//
//  Created by Bounce on 05/08/20.
//  Copyright © 2020 Bounce. All rights reserved.
//

#import "ViewController.h"
#import "InternetSource.h"
#import "MENewsResponse.h"
#import "ArticleTableViewCell.h"
@implementation ViewController {
    NSArray<MEArticle *> *articles;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.tableveiw setDataSource:self];
    [self.tableveiw setDelegate:self];
    [self.tableveiw registerNib:[UINib nibWithNibName:@"ArticleTableViewCell" bundle:nil] forCellReuseIdentifier:@"articleCell"];
    
    [self.source getNews:^(NSDictionary *response, NSError *error) {
        MENewsResponse *news = [[MENewsResponse alloc] initWithDictionary:response];
        self->articles = news.articles;
        NSLog(@"news is %@", news);
        dispatch_async(dispatch_get_main_queue(), ^{
           [[self tableveiw] reloadData];
        });
    }];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellIdentifier = @"articleCell";
    ArticleTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[ArticleTableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    }
    cell.title.text = [[articles objectAtIndex:indexPath.row] title];
    cell.articleDescription.text = [[articles objectAtIndex:indexPath.row] theDescription];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return articles.count;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

@end
