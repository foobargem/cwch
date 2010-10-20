//
//  MediaXMLParseDelegate.m
//  InkwangChurch
//
//  Created by Eunchul on 10. 9. 25..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MediaXMLParserDelegate.h"


@implementation MediaXMLParserDelegate

@synthesize mediaList;
@synthesize currentElementName;
@synthesize currentStringValue;


- (void) parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName
		 namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
		 attributes:(NSDictionary *)attributeDict {

	if ([elementName isEqualToString:@"media"]) {
		if (!mediaList) {
			mediaList = [[NSMutableArray alloc] init];
		}
		return;
	}
	
	if ([elementName isEqualToString:@"item"]) {
		media = [[Media alloc] init];
		return;
	}
	
	if ([elementName isEqualToString:@"title"] || [elementName isEqualToString:@"date"] ||
		[elementName isEqualToString:@"desc"] || [elementName isEqualToString:@"imageURL"] ||
		[elementName isEqualToString:@"videoURL"]) {
		[self setCurrentElementName:elementName];
		//NSLog(@"%@", self.currentElementName);
	}
}

- (void) parser:(NSXMLParser *)parser foundCDATA:(NSData *)CDATABlock {
	NSString *text = [[NSString alloc] initWithData:CDATABlock encoding:NSUTF8StringEncoding];
	[self setCurrentStringValue:text];
	[text release];
}

- (void) parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
	[self setCurrentStringValue:string];
}

- (void) parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName
		 namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
	
	if ([elementName isEqualToString:@"media"]) return;
	
	if ([elementName isEqualToString:@"item"]) {
		[mediaList addObject:media];
		[media release];
		return;
	}
		
	if ([currentElementName isEqualToString:@"title"])		[media setTitle:self.currentStringValue];
	if ([currentElementName isEqualToString:@"date"])		[media setDate:self.currentStringValue];
	if ([currentElementName isEqualToString:@"desc"])		[media setDesc:self.currentStringValue];
	if ([currentElementName isEqualToString:@"imageURL"])	[media setImageURL:self.currentStringValue];
	if ([currentElementName isEqualToString:@"videoURL"])	[media setVideoURL:self.currentStringValue];

	currentElementName = nil;
	currentStringValue = nil;

}

- (void) dealloc {
	[currentElementName release];
	[currentStringValue release];
	[mediaList release];
	[super dealloc];
}

@end
