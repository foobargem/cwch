//
//  InkwangChurchAppDelegate.h
//  InkwangChurch
//
//  Created by Eunchul on 10. 9. 24..
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SplashController.h"

@interface InkwangChurchAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {
    UIWindow *window;
	UITabBarController *tabBarController;
//	SplashController *splashController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;
//@property (nonatomic, retain) IBOutlet SplashController *splashController;

@end

