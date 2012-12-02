//
//  main.m
//  WhereIsMyLaptop
//
//  Created by Sam Hamilton on 11/30/12.
//  Copyright (c) 2012 Sam Hamilton. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LocationInterface.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        LocationInterface* li = [[LocationInterface alloc] init];
        
        [li printLocation];


    }
    return 0;
}

