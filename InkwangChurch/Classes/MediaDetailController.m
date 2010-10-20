    //
//  MediaDetailController.m
//  InkwangChurch
//
//  Created by Eunchul on 10. 9. 26..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MediaDetailController.h"


@implementation MediaDetailController

@synthesize media;

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


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void) viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	
	/*
	titleLabel.text = message.title;
	dateLabel.text = message.date;
	speakerLabel.text = message.speaker;
	wordLabel.text = message.word;
	
	
	NSData *imageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:message.imageURL]];
	imageView.image = [[UIImage alloc] initWithData:imageData];
	 */
	
	self.navigationItem.title = @"Test";

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
}


- (void)dealloc {
    [super dealloc];
}


@end
