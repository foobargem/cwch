//
//  Media.h
//  InkwangChurch
//
//  Created by Eunchul on 10. 9. 25..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Media : NSObject {
	NSString *title;
	NSString *date;
	NSString *desc;
	NSString *videoURL;
	NSString *imageURL;
}

@property (nonatomic, retain) NSString *title;
@property (nonatomic, retain) NSString *date;
@property (nonatomic, retain) NSString *desc;
@property (nonatomic, retain) NSString *imageURL;
@property (nonatomic, retain) NSString *videoURL;


@end
