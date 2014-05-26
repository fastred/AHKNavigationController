#import "AHKTestViewController.h"

@interface AHKTestViewController ()
@property (weak, nonatomic) IBOutlet UIButton *backButton;
@end

@implementation AHKTestViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        NSNumber *num = [NSNumber numberWithInt:(int)self];
        [self setTitle:[num stringValue]];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [[self titleLabel] setText:[self title]];

    if ([self.navigationController.viewControllers count] < 2) {
        self.backButton.hidden = YES;
    }
}


- (UIRectEdge)edgesForExtendedLayout { return UIRectEdgeNone; }


- (void)didTapPop:(id)sender {
    [[self navigationController] popViewControllerAnimated:YES];
}

- (void)didTapPush:(id)sender {
    AHKTestViewController *next = [[AHKTestViewController alloc] initWithNibName:nil bundle:nil];
    [[self navigationController] pushViewController:next animated:YES];
}

@end
