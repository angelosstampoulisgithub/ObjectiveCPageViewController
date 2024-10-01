//
//  PageViewController.m
//  ObjectiveCPageViewController
//
//  Created by Angelos Staboulis on 1/10/24.
//

#import "PageViewController.h"
#import "ViewController.h"
@interface PageViewController ()

@end

@implementation PageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataSource = self;
    ViewController *startingViewController = [self viewControllerAtIndex:0];
    NSArray *viewControllers = @[startingViewController];
    
    [self setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionReverse animated:NO completion:nil];

    // Do any additional setup after loading the view.
}
- (ViewController *)viewControllerAtIndex:(NSUInteger)index
{
    ViewController *pageContentViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PageContentViewController"];
    pageContentViewController.pageIndex = index;
    return pageContentViewController;
}
- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController{
    NSUInteger index = ((ViewController*) viewController).pageIndex;
    if (index < 13){
        index++;
    }else{
        index = 0;
    }
    return [self viewControllerAtIndex:index];

}
- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController{
    NSUInteger index = ((ViewController*) viewController).pageIndex;
    if (index == 0){
        index = 13;
    }else{
        index--;
    }
    return [self viewControllerAtIndex:index];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
