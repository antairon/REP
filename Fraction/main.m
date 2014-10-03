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
        
        [aFraction setTo: 6 over: 4]; // set 1st fraction to 1/4
        [bFraction setTo: 1 over: 2]; // set 2nd fraction to 1/2
        
        [aFraction print: YES];
        NSLog (@"*");
        [bFraction print: YES];
        NSLog (@"=");
        
        resultFraction = [aFraction multiply: bFraction];
        [resultFraction print: YES];

    }
    return 0;
}
