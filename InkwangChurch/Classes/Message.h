//
//  Message.h
//  InkwangChurch
//
//  Created by Eunchul on 10. 9. 24..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Message : NSObject {
	NSString *title;
	NSString *date;
	NSString *imageURL;
	NSString *speaker;
	NSString *word;
	NSString *videoURL;
}

@property (nonatomic, retain) NSString *title;
@property (nonatomic, retain) NSString *date;
@property (nonatomic, retain) NSString *imageURL;
@property (nonatomic, retain) NSString *speaker;
@property (nonatomic, retain) NSString *word;
@property (nonatomic, retain) NSString *videoURL;

@end
