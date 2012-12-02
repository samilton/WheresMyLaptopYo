//
//  LocationInterface.h
//  WhereIsMyLaptop
//
//  Created by Sam Hamilton on 11/30/12.
//  Copyright (c) 2012 Sam Hamilton. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface LocationInterface : NSObject {
    CLLocationManager * manager;
    BOOL locationObtained, errorOccurred;
}

- (void) printLocation;


@end
