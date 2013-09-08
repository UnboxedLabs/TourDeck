//
//  User.m
//  TourDeck
//
//  Created by Leonardo Correa on 9/8/13.
//  Copyright (c) 2013 Unboxed Labs. All rights reserved.
//

#import "User.h"

@implementation User

-(id) initWithDictionary:(NSDictionary *)dictionary
{
    self = [self init];
    
    if (self) {
        self.firstName = dictionary[@"firstName"];
        self.lastName = dictionary[@"lastName"];
        self.photoPath = dictionary[@"photoPath"];
    }
    
    return self;
}

- (NSString*) getFullName
{
    return [NSString stringWithFormat:@"%@ %@", self.firstName, self.lastName];
}

@end
