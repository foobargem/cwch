    //
//  MessageDetailController.m
//  InkwangChurch
//
//  Created by Eunchul on 10. 9. 24..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MessageDetailController.h"


@implementation MessageDetailController

@synthesize message;
@synthesize titleLabel, imageView, dateLabel, speakerLabel, wordLabel;
@synthesize mplayer;


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

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/

- (void) viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];

	titleLabel.text = message.title;
	dateLabel.text = message.date;
	speakerLabel.text = message.speaker;
	wordLabel.text = message.word;
	
	NSData *imageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:message.imageURL]];
	imageView.image = [[UIImage alloc] initWithData:imageData];
	
	self.navigationItem.title = titleLabel.text;

	[self.activityIndicator stopAnimating];
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	[self.activityIndicator startAnimating];
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
	[activityIndicator release];
	[mplayer release];
	[message release];
	[titleLabel release];
	[imageView release];
	[dateLabel release];
	[speakerLabel release];
	[wordLabel release];
    [super dealloc];
}

- (IBAction) playVideoButtonPressed: (id) sender {
	NSString *movie_url = @"rtsp://www.movieupserver.com:1935/vod/mp4:\\STORAGE\\2010\\08\\25\\C9EA698E-32F0-4C8A-A4BC-ACAB5194B366\\C9EA698E-32F0-4C8A-A4BC-ACAB5194B366.m4v";
	
	NSURL *movieURL = [NSURL URLWithString:movie_url];
	NSLog(@"%@", movie_url);
	
	MPMoviePlayerController *mp = [[MPMoviePlayerController alloc] initWithContentURL:movieURL];
	
	if (mp) {
		[mp play];
	} else {
		NSLog(@"error");
	}
	
	//[mp release];
}


@end
