//
//  MapViewController.h
//  SidebarDemo
//
//  Created by April Chien on 4/29/14.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapViewController : UIViewController <MKMapViewDelegate>
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property (nonatomic, strong) IBOutlet MKMapView *mapView;

@end