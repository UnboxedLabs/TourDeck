//
//  TourProfileDetailViewController.h
//  TourDeck
//
//  Created by David Small on 9/8/13.
//  Copyright (c) 2013 Unboxed Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TourGuide.h"

@interface TourProfileDetailViewController : UIViewController

@property (strong, nonatomic) TourGuide *tourGuide;
@property (strong, nonatomic) IBOutlet UIImageView *tourGuidePhoto;
@property (strong, nonatomic) IBOutlet UILabel *tourGuideName;
@property (strong, nonatomic) IBOutlet UILabel *tourGuideLocation;
@property (strong, nonatomic) IBOutlet UILabel *tourGuideHeadline;

@end
