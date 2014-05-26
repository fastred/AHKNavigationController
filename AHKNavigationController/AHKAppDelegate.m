#import "AHKAppDelegate.h"
#import "AHKNavigationController.h"
#import "AHKTestViewController.h"

@implementation AHKAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    AHKTestViewController *controller = [[AHKTestViewController alloc] initWithNibName:nil bundle:nil];
    AHKNavigationController *nav = [[AHKNavigationController alloc] initWithRootViewController:controller];
    [nav setNavigationBarHidden:YES];

    CGRect frame = [[UIScreen mainScreen] bounds];
    UIWindow *window = [[UIWindow alloc] initWithFrame:frame];
    [window setRootViewController:nav];
    [window setBackgroundColor:[UIColor whiteColor]];
    [window makeKeyAndVisible];

    _window = window;
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application { }
- (void)applicationDidEnterBackground:(UIApplication *)application { }
- (void)applicationWillEnterForeground:(UIApplication *)application { }
- (void)applicationDidBecomeActive:(UIApplication *)application { }
- (void)applicationWillTerminate:(UIApplication *)application { }

@end
