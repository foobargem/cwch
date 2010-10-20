//
//  Message.m
//  InkwangChurch
//
//  Created by Eunchul on 10. 9. 24..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Message.h"

@implementation Message

@synthesize title, date, speaker, word;
@synthesize imageURL, videoURL;

- (void) dealloc {
	[title release];
	[date release];
	[speaker release];
	[word release];
	[imageURL release];
	[videoURL release];
	[super dealloc];
}

@end
