//
//  LoginViewController.m
//  TourDeck
//
//  Created by Leonardo Correa on 9/3/13.
//  Copyright (c) 2013 Unboxed Labs. All rights reserved.
//

#import "LoginViewController.h"
#import "ToursViewController.h"

@interface LoginViewController ()
@property (strong, nonatomic) IBOutlet UITextField *emailField;
@property (strong, nonatomic) IBOutlet UITextField *passwordField;

@end

@implementation LoginViewController

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
    [self.emailField setDelegate:self];
    [self.passwordField setDelegate:self];
    
    UITapGestureRecognizer *tapped = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapped:)];
    tapped.numberOfTapsRequired = 1;
    tapped.numberOfTouchesRequired = 1;
    tapped.cancelsTouchesInView = NO;
    
    [self.view addGestureRecognizer:tapped];
}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES];
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"homeView"])
    {
        NSLog(@"stuff");
        ToursViewController* controller = (ToursViewController *)segue.destinationViewController;
        controller.tabBarController.navigationItem.hidesBackButton = YES;
    }
}

- (BOOL)textFieldShouldReturn: (UITextField *)textField
{
    [textField resignFirstResponder];
    // TODO: Add login test functionality
    NSLog(@"Do login check");
    [self performSegueWithIdentifier:@"homeView" sender:nil];
    return YES;
}

- (void)tapped:(UITapGestureRecognizer *)sender
{
    [self.emailField resignFirstResponder];
    [self.passwordField resignFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
