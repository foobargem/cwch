//
//  MediaDetailController.h
//  InkwangChurch
//
//  Created by Eunchul on 10. 9. 26..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Media.h"

@interface MediaDetailController : UIViewController {
	Media *media;
}

@property (nonatomic, retain) Media *media;

@end
