//
//  PanicViewController.m
//  SidebarDemo
//
//  Created by April Chien on 4/28/14.
//

#import "PanicViewController.h"

@interface PanicViewController ()

@end

@implementation PanicViewController

-(IBAction)buttonPressed:(id)sender
{
    UIButton *btn = (UIButton *)sender;
    
    if( [[btn imageForState:UIControlStateNormal] isEqual:[UIImage imageNamed:@"PanicButton.png"]])
    {
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle: @"Message Sent"
                                                   message: @"A help message has been sent to your selected contacts"
                                                  delegate: self
                                         cancelButtonTitle:@"Cancel"
                                         otherButtonTitles:@"OK",nil];
    [alert show];
    }
    else
    {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle: @"Cancelation Sent"
                                                       message: @"A cancelation message has been sent to your contacts"
                                                      delegate: self
                                             cancelButtonTitle:@"Cancel"
                                             otherButtonTitles:@"OK",nil];
        [alert show];
    }
}

-(void)buttonTouched:(id)sender
{
    UIButton *btn = (UIButton *)sender;
    
    if( [[btn imageForState:UIControlStateNormal] isEqual:[UIImage imageNamed:@"PanicButton.png"]])
    {
        [btn setImage:[UIImage imageNamed:@"CancelButton.png"] forState:UIControlStateNormal];
        // other statements
    }
    else
    {
        [btn setImage:[UIImage imageNamed:@"PanicButton.png"] forState:UIControlStateNormal];
        // other statements
    }
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0)
    {
        NSLog(@"user pressed Button Indexed 0");
        // Any action can be performed here
    }
    else
    {
        NSLog(@"user pressed Button Indexed 1");
        // Any action can be performed here
    }
}

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
