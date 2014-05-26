#import "AHKTestViewController.h"

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
}


- (UIRectEdge)edgesForExtendedLayout { return UIRectEdgeNone; }


- (void)didTapBack:(id)sender {
    [[self navigationController] popViewControllerAnimated:YES];
}

- (void)didTapNext:(id)sender {
    AHKTestViewController *next = [[AHKTestViewController alloc] initWithNibName:nil bundle:nil];
    [[self navigationController] pushViewController:next animated:YES];
}

@end
