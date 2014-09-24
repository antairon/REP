//
//  Fraction.h
//  FractionTest
//
//  Created by Anatolii Reva on 9/21/14.
//  Copyright (c) 2014 Anatolii Reva. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property int numerator, denominator;

-(void) print: (BOOL) reduce;
-(void) setTo: (int) n over: (int) d;
-(double) convertToNum;
-(Fraction *) add: (Fraction *) f;
-(Fraction *) substract: (Fraction *) f;
-(Fraction *) multiply: (Fraction *) f;
-(Fraction *) divide: (Fraction *) f;
-(void) reduce;
-(int) mixed;

@end
