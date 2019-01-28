//
//  AMKViewController.m
//  AMKLocaleDescription
//
//  Created by AndyM129 on 01/28/2019.
//  Copyright (c) 2019 AndyM129. All rights reserved.
//

#import "AMKViewController.h"
#import <AMKLocaleDescription/NSObject+AMKLocaleDescription.h>

@interface AMKViewController ()
@property(nonatomic, strong) UIWebView *webView;
@end

@implementation AMKViewController

#pragma mark - Init Methods

#pragma mark - Life Circle

- (void)dealloc {
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = [NSString stringWithFormat:@"控制台本地化输出中文Demo"];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://github.com/AndyM129/AMKLocaleDescription/tree/master"]]];
    
    [self test];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}

#pragma mark - Properties

- (UIWebView *)webView {
    if (!_webView) {
        _webView = [[UIWebView alloc] init];
        [self.view addSubview:_webView];
    }
    return _webView;
}

#pragma mark - Data & Networking

#pragma mark - Layout Subviews

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    self.webView.frame = self.view.bounds;
}

#pragma mark - Public Methods

#pragma mark - Private Methods

// 使用该库之前系统默认的输出：
//    AMKLocaleDescription_Example[4032:5495582] 控制台本地化输出中文Demo:{
//        array =     (
//                     "\U4e2d\U6587ABC",
//                     "\U4e2d\U6587ABC"
//                     );
//        str = "\U4e2d\U6587ABC";
//    }
//
// 使用该库之后的输出：
//    AMKLocaleDescription_Example[4045:5499534] 控制台本地化输出中文Demo:<__NSDictionaryI 0x1c027eb80> {
//        array = [
//                 "中文ABC",
//                 "中文ABC"
//                 ]
//        str = "中文ABC",
//    }
//
- (void)test {
    NSString *str = @"中文ABC";
    NSArray *array = @[@"中文ABC", @"中文ABC"];
    NSDictionary *dict = @{@"str": str, @"array":array};
    NSLog(@"%@:%@", self.title, dict);
}

#pragma mark - Notifications

#pragma mark - KVO

#pragma mark - Delegate

#pragma mark - Override

#pragma mark - Helper Methods

@end
