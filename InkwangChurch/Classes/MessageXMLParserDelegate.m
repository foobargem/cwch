//
//  MessageXMLParseDelegate.m
//  InkwangChurch
//
//  Created by Eunchul on 10. 9. 24..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MessageXMLParserDelegate.h"


@implementation MessageXMLParserDelegate

@synthesize messageList;
@synthesize currentElementName;
@synthesize currentStringValue;


- (void) parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName
   namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
	 attributes:(NSDictionary *)attributeDic {
	
	//NSLog(elementName);
	
	// tag(root): messages
	if ([elementName isEqualToString:@"messages"]) {
		if (!messageList) {
			messageList = [[NSMutableArray alloc] init];
		}
		return;
	}
	
	// tag: message
	if ([elementName isEqualToString:@"message"]) {
		message = [[Message alloc] init];
		return;
	}
	
	if ([elementName isEqualToString:@"title"] || [elementName isEqualToString:@"date"] ||
		[elementName isEqualToString:@"imageURL"] || [elementName isEqualToString:@"speaker"] ||
		[elementName isEqualToString:@"word"] || [elementName isEqualToString:@"videoURL"]) {
		[self setCurrentElementName:elementName];
	}
	
}

- (void) parser:(NSXMLParser *)parser foundCDATA:(NSData *)cdata {
	NSString *text = [[NSString alloc] initWithData:cdata encoding:NSUTF8StringEncoding];
	//NSLog(@"%@", text);
	[self setCurrentStringValue:text];
	[text release];
}

- (void) parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
	[self setCurrentStringValue:string];
	//NSLog(@"%@: %@", self.currentElementName, self.currentStringValue);
}


- (void) parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName
   namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {

	if ([elementName isEqualToString:@"messages"]) return;
	
	if ([elementName isEqualToString:@"message"]) {
		[messageList addObject:message];
		[message release];
		return;
	}
	
	if ([currentElementName isEqualToString:@"title"])	[message setTitle:self.currentStringValue];
	
	if ([currentElementName isEqualToString:@"date"])	[message setDate:self.currentStringValue];
	
	if ([currentElementName isEqualToString:@"speaker"])	[message setSpeaker:self.currentStringValue];
	
	if ([currentElementName isEqualToString:@"word"])		[message setWord:self.currentStringValue];
	
	if ([currentElementName isEqualToString:@"imageURL"])	[message setImageURL:self.currentStringValue];
	
	if ([currentElementName isEqualToString:@"videoURL"])	[message setVideoURL:self.currentStringValue];
	
	currentElementName = nil;
	currentStringValue = nil;
	
}

- (void) dealloc {
	[currentElementName release];
	[currentStringValue release];
	[messageList release];
	[super dealloc];
}


@end
