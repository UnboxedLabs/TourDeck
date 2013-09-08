//
//  TourGuide.m
//  TourDeck
//
//  Created by David Small on 9/7/13.
//  Copyright (c) 2013 Unboxed Labs. All rights reserved.
//

#import "TourGuide.h"

@implementation TourGuide

-(id) initWithDictionary:(NSDictionary *)dictionary
{
    self = [self init];
    
    if (self) {
        self.firstName = dictionary[@"firstName"];
        self.lastName = dictionary[@"lastName"];
        self.headline = dictionary[@"headline"];
        self.photoPath = dictionary[@"photoPath"];
    }
    
    return self;
}

- (NSString*) getFullName
{
    NSArray *name = @[self.firstName, self.lastName];
    NSString *fullName = [name componentsJoinedByString:@" "];
    return fullName;
    
}

@end
