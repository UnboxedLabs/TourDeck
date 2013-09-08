//
//  User.h
//  TourDeck
//
//  Created by Leonardo Correa on 9/8/13.
//  Copyright (c) 2013 Unboxed Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property(strong, nonatomic) NSString * firstName;
@property(strong, nonatomic) NSString * lastName;
@property(strong, nonatomic) NSString * photoPath;

-(id) initWithDictionary:(NSDictionary *)dictionary;
-(NSString*) getFullName;

@end
