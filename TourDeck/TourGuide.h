//
//  TourGuide.h
//  TourDeck
//
//  Created by David Small on 9/7/13.
//  Copyright (c) 2013 Unboxed Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TourGuide : NSObject

@property(strong, nonatomic) NSString * firstName;
@property(strong, nonatomic) NSString * lastName;
@property(strong, nonatomic) NSString * photoPath;
@property(strong, nonatomic) NSString * headline;

-(id) initWithDictionary:(NSDictionary *)dictionary;
-(NSString*) getFullName;

@end
