//
//  MediaXMLParseDelegate.h
//  InkwangChurch
//
//  Created by Eunchul on 10. 9. 25..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Media.h"

@interface MediaXMLParserDelegate : NSObject <NSXMLParserDelegate> {
	NSMutableArray *mediaList;
	NSString *currentElementName;
	NSString *currentStringValue;
	Media *media;
}

@property (nonatomic, retain) NSMutableArray *mediaList;
@property (nonatomic, retain) NSString *currentElementName;
@property (nonatomic, retain) NSString *currentStringValue;

@end
