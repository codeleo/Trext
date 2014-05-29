//
//  Trackee1ViewController.h
//  SidebarDemo
//
//  Created by April Chien on 4/29/14.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import "MapPoint.h"

#define kGOOGLE_API_KEY @"AIzaSyCH_pTrFWtAVVeQjk4CWafnVpxBMjzkIiw"

#define kBgQueue dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)

@interface Trackee1ViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>

{
    CLLocationManager *locationManager;
    
    CLLocationCoordinate2D currentCentre;
    int currenDist;
    BOOL firstLaunch;
}

@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;

@property (nonatomic, strong) IBOutlet MKMapView *mapView;

@end
