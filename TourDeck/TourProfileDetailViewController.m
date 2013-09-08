//
//  TourProfileDetailViewController.m
//  TourDeck
//
//  Created by David Small on 9/8/13.
//  Copyright (c) 2013 Unboxed Labs. All rights reserved.
//

#import "TourProfileDetailViewController.h"

@interface TourProfileDetailViewController ()

@end

@implementation TourProfileDetailViewController

@synthesize tourGuide;
@synthesize tourGuideName;
@synthesize tourGuideLocation;
@synthesize tourGuidePhoto;

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
    self.navigationItem.title = [tourGuide getFullName];
    self.tourGuideHeadline.text = [@[@"\"", tourGuide.headline, @"\""] componentsJoinedByString:@""];
    self.tourGuideName.text = [tourGuide getFullName];
    self.tourGuideLocation.text = tourGuide.location;
    self.tourGuidePhoto.image = [UIImage imageNamed:tourGuide.photoPath];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
