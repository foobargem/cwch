    //
//  ContactViewController.m
//  InkwangChurch
//
//  Created by Eunchul on 10. 10. 3..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "ContactViewController.h"


@implementation ContactViewController

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
	
	self.navigationItem.title = @"위치 및 연락처";

}

- (void) viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	
	CLLocationCoordinate2D mapCenter;
	mapCenter.latitude = LOC_LATITUDE; 
	mapCenter.longitude = LOC_LONGITUDE;
	
	MKCoordinateSpan mapSpan;
	mapSpan.latitudeDelta = 0.005;
	mapSpan.longitudeDelta = 0.005;
	
	MKCoordinateRegion mapRegion;
	mapRegion.center = mapCenter;
	mapRegion.span = mapSpan;
	
	mapView.region = mapRegion;
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
	[mapView release];
    [super dealloc];
}


@end
