//
//  MediaListController.h
//  InkwangChurch
//
//  Created by Eunchul on 10. 9. 25..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Media.h"
#import "MediaXMLParserDelegate.h"
#import "MediaDetailController.h"

@interface MediaListController : UITableViewController {
	NSMutableArray *mediaList;
	IBOutlet UITableView *mediaTableView;
}

@property (nonatomic, retain) NSMutableArray *mediaList;
@property (nonatomic, retain) IBOutlet UITableView *mediaTableView;


@end
