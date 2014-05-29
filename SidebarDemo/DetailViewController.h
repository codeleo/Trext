//
//  DetailViewController.h
//  TrextApp
//
//  Created by April Chien on 5/1/14.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface DetailViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, UIActionSheetDelegate, MFMessageComposeViewControllerDelegate>

@property (nonatomic, strong) NSDictionary *dictContactDetails;

@property (nonatomic, weak) IBOutlet UILabel *lblContactName;
@property (nonatomic, weak) IBOutlet UIImageView *imgContactImage;
@property (nonatomic, weak) IBOutlet UITableView *tblContactDetails;

-(IBAction)makeCall:(id)sender;
-(IBAction)sendSMS:(id)sender;

@end
