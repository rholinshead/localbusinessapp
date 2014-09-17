//
//  LocationDataController.m
//  LocalBusinessApp
//
//  Created by Ryan Holinshead on 2014-08-31.
//  Copyright (c) 2014 Ryan Holinshead. All rights reserved.
//

#import "LocationDataController.h"

@implementation LocationDataController

-(Location*)getPointOfInterest {
    Location *storeLocation = [[Location alloc] init];
    storeLocation.address = @"Fetzer Tire and Automotive Repair, 3651 Post Rd, Southport, CT 06890";
    storeLocation.photoFileName = @"fetzer-tire-store.jpg";
    storeLocation.latitude = 41.138235;
    storeLocation.longitude = -73.297750;
    
    return storeLocation;
}

@end
