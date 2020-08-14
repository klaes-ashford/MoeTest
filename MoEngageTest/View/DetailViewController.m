//
//  DetailViewController.m
//  MoEngageTest
//
//  Created by Aswin Koramanghat on 14/08/20.
//  Copyright © 2020 Bounce. All rights reserved.
//

#import "DetailViewController.h"
#import <WebKit/WebKit.h>

@interface DetailViewController () <WKNavigationDelegate>

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self loadWebPage];
    [self setupActivityIndicator];
    [self setupOfflineButton];
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

-(void) setupOfflineButton {
    UIBarButtonItem *offlinButton = [[UIBarButtonItem alloc]
                                   initWithTitle:@"Offline"
                                   style:UIBarButtonItemStylePlain
                                   target:self
                                   action:@selector(storeOffline:)];
    self.navigationItem.rightBarButtonItem = offlinButton;
}

-(void) storeOffline:(id) sender {
    [self.delegate storeOffline];
}

-(void) setupActivityIndicator {
    self.activity = [[UIActivityIndicatorView alloc] initWithFrame:self.view.frame];
    [self.activity startAnimating];
    [self.activity setHidesWhenStopped:YES];
    [self.view addSubview:self.activity];
}

-(void) loadWebPage {
    WKWebViewConfiguration *theConfiguration = [[WKWebViewConfiguration alloc] init];
    WKWebView *webView = [[WKWebView alloc] initWithFrame:self.view.frame configuration:theConfiguration];
    webView.navigationDelegate = self;
    [webView loadRequest:self.request];
    [self.view addSubview:webView];
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {
    [self.activity stopAnimating];
}

- (void)webView:(WKWebView *)webView didFailNavigation:(WKNavigation *)navigation withError:(NSError *)error {
    [self.activity stopAnimating];
}

@end
