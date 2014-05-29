//
//  PhotoViewController.h
//  SidebarDemo
//
//  Created by April Chien on 4/29/14.

#import <UIKit/UIKit.h>
#import <AddressBookUI/AddressBookUI.h>

@interface PhotoViewController : UIViewController <ABPeoplePickerNavigationControllerDelegate, UIPickerViewDataSource,UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;

@property (weak, nonatomic) IBOutlet UILabel *firstName;
@property (weak, nonatomic) IBOutlet UILabel *phoneNumber;

- (IBAction)showPicker:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *destinationPrefix;
@property (strong, nonatomic) IBOutlet UILabel *pickerSelection;

@property (strong, nonatomic) IBOutlet UIPickerView *destinationPicker;
@property (strong, nonatomic) NSArray *destinationList;

@end
