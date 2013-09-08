//
//  AccountViewController.m
//  TourDeck
//
//  Created by Leonardo Correa on 9/8/13.
//  Copyright (c) 2013 Unboxed Labs. All rights reserved.
//

#import "AccountViewController.h"
#import "User.h"

@interface AccountViewController () {
    User *_tourist;
}

@end

@implementation AccountViewController

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
    _tourist = [[User alloc] initWithDictionary:@{@"firstName":@"Leo", @"lastName": @"Correa", @"photoPath": @"leo.png"}];
    
    self.fullNameLabel.text = [_tourist getFullName];
    self.profileImage.image = [UIImage imageNamed:[_tourist photoPath]];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)logout:(id)sender {

    [self.navigationController popToRootViewControllerAnimated:YES];    
}

- (IBAction)viewProfile:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"View Profile" message:@"David loves bacon" delegate:nil cancelButtonTitle:@"Cancell" otherButtonTitles:nil, nil];
    
    [alert show];
}

- (IBAction)pendingTours:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Pending Tours" message:@"David loves bacon" delegate:nil cancelButtonTitle:@"Cancell" otherButtonTitles:nil, nil];
    
    [alert show];
}

- (IBAction)pastTours:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Past Tours" message:@"David loves bacon" delegate:nil cancelButtonTitle:@"Cancell" otherButtonTitles:nil, nil];
    
    [alert show];
}
@end
