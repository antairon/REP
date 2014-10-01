//
//  main.m
//  Fraction
//
//  Created by Anatolii Reva on 10/2/14.
//  Copyright (c) 2014 AIR. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        
        Fraction *resultFraction;
        
        [aFraction setTo: 1 over: 4]; // set 1st fraction to 1/4
        [bFraction setTo: 1 over: 2]; // set 2nd fraction to 1/2
        
        [aFraction print];
        NSLog (@"+");
        [bFraction print];
        NSLog (@"=");
        
        resultFraction = [aFraction add: bFraction];
        [resultFraction print];

    }
    return 0;
}
