//
//  DestinationListTableViewController.h
//  Trext
//
//  Created by April Chien on 5/2/14.
//

#import <UIKit/UIKit.h>
#import "Destination.h"

@interface DestinationListTableViewController : UITableViewController

- (IBAction)unwindToList:(UIStoryboardSegue *)segue;

@property Destination *Destinations;

@end
