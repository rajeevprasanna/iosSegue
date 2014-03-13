 

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)removeKeyboard:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *num001;
@property (weak, nonatomic) IBOutlet UITextField *num002;
@property (weak, nonatomic) IBOutlet UILabel *output;

- (IBAction)doExtendedHelp:(id)sender;
- (IBAction)doSomething;
- (IBAction)gotoHelp:(id)sender;

@end
