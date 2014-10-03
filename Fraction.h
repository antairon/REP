//
//  Fraction.h
//  Fraction
//
//  Created by Anatolii Reva on 10/2/14.
//  Copyright (c) 2014 AIR. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property int numerator, denominator;

-(void) print: (BOOL) toReduce;
-(void) setTo: (int) n over: (int) d;
-(double) convertToNum;
-(int) wholeNumber;
-(Fraction *) add: (Fraction *) f;
-(Fraction *) substract: (Fraction *) f;
-(Fraction *) multiply: (Fraction *) f;
-(Fraction *) divide: (Fraction *) f;
-(void) reduce;


@end
