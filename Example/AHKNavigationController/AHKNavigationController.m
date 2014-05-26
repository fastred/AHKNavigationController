#import "AHKNavigationController.h"

@implementation AHKNavigationController

- (void)dealloc {
    [self setDelegate:nil];
    [[self interactivePopGestureRecognizer] setDelegate:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    __weak typeof(self) weakSelf = self;
    [self setDelegate:weakSelf];
    [[self interactivePopGestureRecognizer] setDelegate:weakSelf];
}


#pragma mark - UINavigationController

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    [self setPushingViewController:YES];
    [super pushViewController:viewController animated:animated];
}


# pragma mark - UINavigationControllerDelegate

- (void)navigationController:(UINavigationController *)navigationController
       didShowViewController:(UIViewController *)viewController
                    animated:(BOOL)animated {
    [self setPushingViewController:NO];
}


#pragma mark - UIGestureRecognizerDelegate

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    if (gestureRecognizer != [self interactivePopGestureRecognizer]) return YES;

    return [[self viewControllers] count] > 1 && ![self isPushingViewController];
}

@end
