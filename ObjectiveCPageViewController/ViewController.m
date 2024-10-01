//
//  ViewController.m
//  ObjectiveCPageViewController
//
//  Created by Angelos Staboulis on 1/10/24.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _imageArray = [NSMutableArray array];
    [_imageArray addObject:[UIImage imageNamed:@"komotini2"]];
    [_imageArray addObject:[UIImage imageNamed:@"komotini3"]];
    [_imageArray addObject:[UIImage imageNamed:@"komotini4"]];
    [_imageArray addObject:[UIImage imageNamed:@"komotini5"]];
    [_imageArray addObject:[UIImage imageNamed:@"komotini6"]];
    [_imageArray addObject:[UIImage imageNamed:@"komotini7"]];
    [_imageArray addObject:[UIImage imageNamed:@"komotini8"]];
    [_imageArray addObject:[UIImage imageNamed:@"komotini9"]];
    [_imageArray addObject:[UIImage imageNamed:@"komotini10"]];
    [_imageArray addObject:[UIImage imageNamed:@"komotini11"]];
    [_imageArray addObject:[UIImage imageNamed:@"komotini12"]];
    [_imageArray addObject:[UIImage imageNamed:@"komotini13"]];
    [_imageArray addObject:[UIImage imageNamed:@"komotini14"]];
    [_imageArray addObject:[UIImage imageNamed:@"komotini15"]];
    [_mainImageView setImage:[_imageArray objectAtIndex:_pageIndex]];
}


@end
