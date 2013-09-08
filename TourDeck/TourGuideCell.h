//
//  TourGuideCell.h
//  TourDeck
//
//  Created by David Small on 9/7/13.
//  Copyright (c) 2013 Unboxed Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TourGuideCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *tourGuideName;
@property (strong, nonatomic) IBOutlet UILabel *tourGuideHeadline;
@property (strong, nonatomic) IBOutlet UIImageView *tourGuidePhoto;

@end
