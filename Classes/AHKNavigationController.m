//  Created by Arkadiusz on 01-04-14.

#import "AHKNavigationController.h"

@interface AHKNavigationController () <UINavigationControllerDelegate, UIGestureRecognizerDelegate>
@property (nonatomic, getter = isPushingViewController) BOOL pushingViewController;
@end

@implementation AHKNavigationController

#pragma mark - NSObject

- (void)dealloc
{
    self.delegate = nil;
    self.interactivePopGestureRecognizer.delegate = nil;
}

#pragma mark - UIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    __weak typeof(self) weakSelf = self;
    self.delegate = weakSelf;
    self.interactivePopGestureRecognizer.delegate = weakSelf;
}

#pragma mark - UINavigationController

- (void)pushViewController:(UIViewController *)viewController
                  animated:(BOOL)animated
{
    self.pushingViewController = YES;
    [super pushViewController:viewController animated:animated];
}

#pragma mark UINavigationControllerDelegate

- (void)navigationController:(UINavigationController *)navigationController
       didShowViewController:(UIViewController *)viewController
                    animated:(BOOL)animated
{
    self.pushingViewController = NO;
}

#pragma mark - UIGestureRecognizerDelegate

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    if (gestureRecognizer == self.interactivePopGestureRecognizer) {
        // Disable pop gesture in two situations:
        // 1) when the pop animation is in progress
        // 2) when user swipes quickly a couple of times and animations don't have time to be performed
        return [self.viewControllers count] > 1 && !self.isPushingViewController;
    } else {
        // default value
        return YES;
    }
}

@end
