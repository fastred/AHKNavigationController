#import <UIKit/UIKit.h>

@interface AHKTestViewController : UIViewController

@property (nonatomic, assign) IBOutlet UILabel *titleLabel;

- (IBAction)didTapPop:(id)sender;
- (IBAction)didTapPush:(id)sender;

@end
