//
//  ContactViewController.h
//  InkwangChurch
//
//  Created by Eunchul on 10. 10. 3..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

#define LOC_LATITUDE (37.470132)
#define LOC_LONGITUDE (126.718454);



@interface ContactViewController : UIViewController {
	IBOutlet MKMapView *mapView;
	//MKReverseGeocoder *geoCoder;
	//MKPlacemark *mPlacemark;
}

@end
