//
//  main.m
//  FractionTest
//
//  Created by Anatolii Reva on 9/21/14.
//  Copyright (c) 2014 Anatolii Reva. All rights reserved.
//

#import "Fraction.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        Fraction *resultFraction;
        
        [aFraction setTo:8 over:4];
        [aFraction print:0];
        NSLog(@"+");
        [bFraction setTo:1 over:2];
        [bFraction print:0];
        NSLog(@"=");
        
        resultFraction = [aFraction add: bFraction];
        [resultFraction print:1];
        
        }
    return 0;
}
