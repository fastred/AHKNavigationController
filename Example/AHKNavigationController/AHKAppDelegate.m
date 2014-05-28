#import "AHKAppDelegate.h"
#import "AHKNavigationController.h"
#import "AHKTestViewController.h"

@implementation AHKAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    AHKTestViewController *controller = [[AHKTestViewController alloc] initWithNibName:nil bundle:nil];
    AHKNavigationController *nav = [[AHKNavigationController alloc] initWithRootViewController:controller];
    nav.navigationBarHidden = YES;

    CGRect frame = [UIScreen mainScreen].bounds;
    UIWindow *window = [[UIWindow alloc] initWithFrame:frame];
    window.rootViewController = nav;
    window.backgroundColor = [UIColor whiteColor];
    [window makeKeyAndVisible];
    self.window = window;

    return YES;
}

@end
