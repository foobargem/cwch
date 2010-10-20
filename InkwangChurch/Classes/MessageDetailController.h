//
//  MessageDetailController.h
//  InkwangChurch
//
//  Created by Eunchul on 10. 9. 24..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MPMoviePlayerController.h>
#import "Message.h"


@interface MessageDetailController : UIViewController {
	Message *message;
	
	IBOutlet UILabel *titleLabel;
	IBOutlet UIImageView *imageView;
	IBOutlet UIButton *playVideoButton;
	IBOutlet UILabel *dateLabel;
	IBOutlet UILabel *speakerLabel;
	IBOutlet UILabel *wordLabel;
	
	IBOutlet UIActivityIndicatorView *activityIndicator;
	
	MPMoviePlayerController *mplayer;
}

@property (nonatomic, retain) Message *message;

@property (nonatomic, retain) UILabel *titleLabel;
@property (nonatomic, retain) UIImageView *imageView;
@property (nonatomic, retain) UIButton *playVideoButton;
@property (nonatomic, retain) UILabel *dateLabel;
@property (nonatomic, retain) UILabel *speakerLabel;
@property (nonatomic, retain) UILabel *wordLabel;

@property (nonatomic, retain) UIActivityIndicatorView *activityIndicator;

@property (nonatomic, retain) MPMoviePlayerController *mplayer;

- (IBAction) playVideoButtonPressed: (id) sender;

@end
