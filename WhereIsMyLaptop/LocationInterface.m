//
//  LocationInterface.m
//  WhereIsMyLaptop
//
//  Created by Sam Hamilton on 11/30/12.
//  Copyright (c) 2012 Sam Hamilton. All rights reserved.
//

#import "LocationInterface.h"

@implementation LocationInterface

- (void) printLocation {
    manager = [[CLLocationManager alloc] init];
    manager.delegate = self;
    locationObtained = NO;
    errorOccurred = NO;
       
    [manager startUpdatingLocation];
    
    while(!locationObtained && !errorOccurred) {
        CFRunLoopRun();
    }

    
}

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation  {
    if (oldLocation != nil) {
        printf("%s\n",[[NSString stringWithFormat:@"%f,%f", newLocation.coordinate.latitude, newLocation.coordinate.longitude] UTF8String]);
        locationObtained = YES;
        CFRunLoopStop(CFRunLoopGetCurrent());
    }
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
	fprintf(stderr,"%s\n",[[NSString stringWithFormat:@"%@: %@",[error localizedDescription],[error localizedFailureReason]] UTF8String]);
    switch ([error code]) {
        case kCLErrorLocationUnknown:
            printf("Unknown");
            
        case kCLErrorDenied:
            printf("Not allowed");
            
        default:
            break;
    }
	errorOccurred = YES;
	CFRunLoopStop(CFRunLoopGetCurrent());
}
@end
