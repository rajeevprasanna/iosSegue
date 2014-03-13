
#import "HelpViewController.h"

@interface HelpViewController ()

@end

@implementation HelpViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"Ready to appear");
    self.addResult.text = [NSString stringWithFormat:@"%d", _n1 + _n2];
    self.navigationItem.title = [NSString stringWithFormat:@"%d", _n1 + _n2];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doStuff:(id)sender
{
    NSLog(@"This is a helpful help");
}
@end
