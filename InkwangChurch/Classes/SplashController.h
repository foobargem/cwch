//
//  SplashController.h
//  InkwangChurch
//
//  Created by Eunchul on 10. 9. 25..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SplashController : UIViewController {
	IBOutlet UIView *modelView;
	IBOutlet UIActivityIndicatorView *activityIndicator;
}

- (void) showSplash;
- (void) hideSplash;

@end
