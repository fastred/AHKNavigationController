#import "AHKTestViewController.h"

@interface AHKTestViewController ()
@property (weak, nonatomic) IBOutlet UIButton *backButton;
@property (nonatomic, assign) IBOutlet UILabel *titleLabel;
@end

@implementation AHKTestViewController

#pragma mark - UIViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        NSNumber *num = @((int)self);
        self.title = [num stringValue];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.titleLabel.text = self.title;

    if ([self.navigationController.viewControllers count] < 2) {
        self.backButton.hidden = YES;
    }
}

- (UIRectEdge)edgesForExtendedLayout
{
    return UIRectEdgeNone;
}

#pragma mark - Actions

- (IBAction)popButtonTapped:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)pushButtonTapped:(id)sender
{
    AHKTestViewController *next = [[AHKTestViewController alloc] initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:next animated:YES];
}

@end
