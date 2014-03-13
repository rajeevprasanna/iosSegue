 
#import <UIKit/UIKit.h>

@interface HelpViewController : UIViewController
- (IBAction)doStuff:(id)sender;
@property (assign, nonatomic)NSInteger n1;
@property (assign, nonatomic)NSInteger n2;
@property (weak, nonatomic) IBOutlet UILabel *addResult;

@end
