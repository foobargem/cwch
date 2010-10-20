//
//  MessageXMLParseDelegate.h
//  InkwangChurch
//
//  Created by Eunchul on 10. 9. 24..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Message.h"


@interface MessageXMLParserDelegate : NSObject <NSXMLParserDelegate> {
	NSMutableArray *messageList;
	NSString *currentElementName;
	NSString *currentStringValue;
	Message *message;
}

@property (nonatomic, retain) NSMutableArray *messageList;
@property (nonatomic, retain) NSString *currentElementName;
@property (nonatomic, retain) NSString *currentStringValue;

@end
