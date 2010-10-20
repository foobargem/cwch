    //
//  IntroductionViewController.m
//  InkwangChurch
//
//  Created by Eunchul on 10. 10. 3..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "IntroductionViewController.h"


@implementation IntroductionViewController

@synthesize pastorName, description;
@synthesize imageFileName, imageFileType;

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
	[super loadView];
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];

	scrollView.contentSize = self.view.frame.size;

	self.navigationItem.title = @"교회 소개";
	
	NSString *resourcePath = [[NSBundle mainBundle] pathForResource:@"BaseInformations" ofType:@"plist"];
	NSDictionary *infoDic = [[NSDictionary alloc] initWithContentsOfFile:resourcePath];
	
	self.pastorName = [[infoDic objectForKey:@"introduction"] objectForKey:@"pastor_name"];
	self.description = [[infoDic objectForKey:@"introduction"] objectForKey:@"description"]; 
	self.imageFileName = [[infoDic objectForKey:@"introduction"] objectForKey:@"image_file_name"];
	self.imageFileType = [[infoDic objectForKey:@"introduction"] objectForKey:@"image_file_type"];
	
	[infoDic release];
}


- (void) viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	
	NSString *imagePath = [[NSBundle mainBundle] pathForResource:self.imageFileName ofType:self.imageFileType];
	pastorImageView.image = [[UIImage alloc] initWithContentsOfFile:imagePath];
	
	textView.text = description;

	[imagePath release];
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
	[pastorName release];
	[description release];
	[imageFileName release];
	[imageFileType release];
	
	[pastorImageView release];
	[scrollView release];
    [super dealloc];
}


@end
