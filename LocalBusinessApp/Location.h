//
//  Location.h
//  LocalBusinessApp
//
//  Created by Ryan Holinshead on 2014-08-31.
//  Copyright (c) 2014 Ryan Holinshead. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Location : NSObject

@property (strong, nonatomic) NSString *address;

@property (strong, nonatomic) NSString *photoFileName;

@property (nonatomic) float latitude;

@property (nonatomic) float longitude;

@end
