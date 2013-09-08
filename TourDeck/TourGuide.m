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
        self.firstName = [dictionary objectForKey:@"firstName"] ? dictionary[@"firstName"] : @"";
        self.lastName = [dictionary objectForKey:@"lastName"] ? dictionary[@"lastName"] : @"";
        self.headline = [dictionary objectForKey:@"headline"] ? dictionary[@"headline"] : @"";
        self.photoPath = [dictionary objectForKey:@"photoPath"] ? dictionary[@"photoPath"] : @"";
        self.location = [dictionary objectForKey:@"location"] ? dictionary[@"location"] : @"";
    }
    
    return self;
}

- (NSString*) getFullName
{
   return [NSString stringWithFormat:@"%@ %@", self.firstName, self.lastName];
    
}

@end
