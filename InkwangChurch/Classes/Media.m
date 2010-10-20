//
//  Media.m
//  InkwangChurch
//
//  Created by Eunchul on 10. 9. 25..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Media.h"


@implementation Media

@synthesize title, date, desc;
@synthesize imageURL, videoURL;

- (void) dealloc {
	[title release];
	[date release];
	[desc release];
	[imageURL release];
	[videoURL release];
	[super dealloc];
}

@end
