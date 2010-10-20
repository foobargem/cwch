    //
//  SplashController.m
//  InkwangChurch
//
//  Created by Eunchul on 10. 9. 25..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "SplashController.h"


@implementation SplashController


- (UIActivityIndicatorView *) activityIndicator {
	if (activityIndicator == nil) {
		activityIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
		[activityIndicator setHidesWhenStopped:YES];
	}
	return activityIndicator;
}

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/


// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
	[activityIndicator startAnimating];
	NSLog(@"loadView");
}



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	NSLog(@"viewDidLoad");
}


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
	NSLog(@"viewDidUnload");
}


- (void)dealloc {
	[activityIndicator release];
    [super dealloc];
}

- (void) showSplash {
	NSLog(@"show splash");
	[self.activityIndicator startAnimating];
	UIViewController *modalViewController = [[UIViewController alloc] init];
	modalViewController.view = modelView;
	[self presentModalViewController:modalViewController animated:NO];
	[self performSelector:@selector(hideSplash) withObject:nil afterDelay:2.0];
}

- (void) hideSplash {
		NSLog(@"hide splash");
//	[self.activityIndicator stopAnimating];
	[[self modalViewController] dismissModalViewControllerAnimated:YES];
}


@end
