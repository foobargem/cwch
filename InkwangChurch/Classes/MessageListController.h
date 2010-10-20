//
//  MessageListController.h
//  InkwangChurch
//
//  Created by Eunchul on 10. 9. 24..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Message.h"
#import "MessageXMLParserDelegate.h"
#import "MessageDetailController.h"


@interface MessageListController : UITableViewController {
	IBOutlet UITableView *messageTableView;
	NSMutableArray *messageList;
	IBOutlet UIActivityIndicatorView *activityIndicatorView;
}

@property (nonatomic, retain) UITableView *messageTableView;
@property (nonatomic, retain) NSMutableArray *messageList;
@property (nonatomic, retain) IBOutlet UIActivityIndicatorView *activityIndicatorView;


@end
