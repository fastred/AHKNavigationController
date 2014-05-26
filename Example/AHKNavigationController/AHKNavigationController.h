#import <UIKit/UIKit.h>

@interface AHKNavigationController : UINavigationController
<UINavigationControllerDelegate, UIGestureRecognizerDelegate>

@property (nonatomic, getter = isPushingViewController) BOOL pushingViewController;

@end
