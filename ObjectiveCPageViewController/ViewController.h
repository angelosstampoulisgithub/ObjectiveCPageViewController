//
//  ViewController.h
//  ObjectiveCPageViewController
//
//  Created by Angelos Staboulis on 1/10/24.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *mainImageView;
@property NSUInteger pageIndex;
@property NSMutableArray<UIImage*> *imageArray;
@end

