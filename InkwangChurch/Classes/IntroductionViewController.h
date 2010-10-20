//
//  IntroductionViewController.h
//  InkwangChurch
//
//  Created by Eunchul on 10. 10. 3..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface IntroductionViewController : UIViewController {
	IBOutlet UIImageView *pastorImageView;
	IBOutlet UIScrollView *scrollView;
	IBOutlet UITextView *textView;
	
	NSString *pastorName;
	NSString *description;
	NSString *imageFileName;
	NSString *imageFileType;
}

@property (nonatomic, retain) NSString *pastorName;
@property (nonatomic, retain) NSString *description;
@property (nonatomic, retain) NSString *imageFileName;
@property (nonatomic, retain) NSString *imageFileType;


@end
