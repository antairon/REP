//
//  Fraction.h
//  Fraction
//
//  Created by Anatolii Reva on 10/2/14.
//  Copyright (c) 2014 AIR. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
{
    int numerator;
    int denominator;
}

@property int numerator, denominator;

-(void) print;
-(void) setTo: (int) n over: (int) d;
-(double) convertToNum;
-(Fraction *) add: (Fraction *) f;
-(void) reduce;


@end
