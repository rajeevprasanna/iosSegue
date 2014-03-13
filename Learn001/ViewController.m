 

#import "ViewController.h"
#import "HelpViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doExtendedHelp:(id)sender {
    NSLog(@"Extended Help");
    [self performSegueWithIdentifier:@"seg2" sender:self];
}

- (IBAction)doSomething
{
//    NSLog(@"You touched");
//    NSInteger x = self.num001.text.integerValue;
//    NSInteger y = self.num002.text.integerValue;
////    NSLog(@"Sum of %d and %d = %d", x, y, x+y);
//    self.output.text = [NSString stringWithFormat:@"%d", x + y];
//    [self.num001 resignFirstResponder];
//    [self.num002 resignFirstResponder];
    [self performSegueWithIdentifier:@"seg1" sender:self];
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"seg1"] ) {
        NSLog(@"We are on right track");
//        UINavigationController * navController = self.navigationController;
        NSLog(@"Class is %@", [segue.destinationViewController class]);
        
        HelpViewController * controller = (HelpViewController*)segue.destinationViewController;
        controller.n1 = self.num001.text.integerValue;
        controller.n2 = self.num002.text.integerValue;
        
        
    }
    else
    {
        NSLog(@"Unknown Track");
    }
}

- (IBAction)gotoHelp:(id)sender {
    [self performSegueWithIdentifier:@"seg1" sender:self];
}
- (IBAction)removeKeyboard:(id)sender {
}
@end
