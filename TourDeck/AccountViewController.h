//
//  AccountViewController.h
//  TourDeck
//
//  Created by Leonardo Correa on 9/8/13.
//  Copyright (c) 2013 Unboxed Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AccountViewController : UIViewController

- (IBAction)logout:(id)sender;
- (IBAction)viewProfile:(id)sender;
- (IBAction)pendingTours:(id)sender;
- (IBAction)pastTours:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *fullNameLabel;
@property (strong, nonatomic) IBOutlet UILabel *locationLabel;
@property (strong, nonatomic) IBOutlet UIImageView *profileImage;

@end
