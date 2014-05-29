//
//  AddDestinationsViewController.m
//  Trext
//
//  Created by April Chien on 5/2/14.
//

#import "AddDestinationsViewController.h"
#import "Destination.h"
#import "DestinationListTableViewController.h"

@interface AddDestinationsViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *cancelButton;


@property NSMutableArray *Destinations;

@end

@implementation AddDestinationsViewController

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if (sender != self.doneButton) return;
    if (self.textField.text.length > 0) {
        self.toDoItem = [[Destination alloc] init];
        self.toDoItem.itemName = self.textField.text;
        self.toDoItem.completed = NO;
    }
}

//- (IBAction)unwindToList:(UIStoryboardSegue *)segue
//{
//    AddDestinationsViewController *source = [segue sourceViewController];
//    Destination *item = source.toDoItem;
//    if (item != nil) {
//        [self.toDoItems addObject:item];
//        [self.tableView reloadData];
//    }
//}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Add Destination";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
