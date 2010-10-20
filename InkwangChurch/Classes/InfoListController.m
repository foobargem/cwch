    //
//  InfoListController.m
//  InkwangChurch
//
//  Created by Eunchul on 10. 10. 3..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "InfoListController.h"


@implementation InfoListController

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


- (IBAction) introductionButtonPressed: (id) sender {
	IntroductionViewController *introductionVC = [[IntroductionViewController alloc] initWithNibName:@"IntroductionView" bundle:nil];
	[self.navigationController pushViewController:introductionVC animated:YES];
	[introductionVC release];
}

- (IBAction) contactButtonPressed: (id) sender {
	ContactViewController *contactVC = [[ContactViewController alloc] initWithNibName:@"ContactView" bundle:nil];
	[self.navigationController pushViewController:contactVC animated:YES];
	[contactVC release];
}


@end
