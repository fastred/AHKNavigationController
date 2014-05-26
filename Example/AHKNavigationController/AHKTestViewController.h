#import <UIKit/UIKit.h>

@interface AHKTestViewController : UIViewController

@property (nonatomic, assign) IBOutlet UILabel *titleLabel;

- (IBAction)didTapBack:(id)sender;
- (IBAction)didTapNext:(id)sender;

@end
