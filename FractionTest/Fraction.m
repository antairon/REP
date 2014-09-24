//
//  Fraction.m
//  FractionTest
//
//  Created by Anatolii Reva on 9/21/14.
//  Copyright (c) 2014 Anatolii Reva. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
@synthesize numerator, denominator;
-(void) print: (BOOL) reduce
{
    int wholeNumber;
    Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator;
    result.denominator = denominator;

    if (reduce)
    {[self reduce];
        wholeNumber = [self mixed];
        if (numerator == 0 && wholeNumber == 0) {
            NSLog(@"0");
        }
        else if (numerator == 0 && wholeNumber != 0)
        {
            NSLog(@"%i", wholeNumber);
        }
        else if (wholeNumber == 0)
        {
            NSLog(@"%i/%i",  numerator, denominator);
        }else
        {
            NSLog(@"%i %i/%i", wholeNumber, numerator, denominator);
        }
    }
    else
    {        wholeNumber = [self mixed];
        if (numerator == 0 && wholeNumber == 0) {
            NSLog(@"0");
        }
        else if (numerator == 0 && wholeNumber != 0)
        {
            NSLog(@"%i", wholeNumber);
        }
        else if (wholeNumber == 0)
        {
            NSLog(@"%i/%i",  numerator, denominator);
        }else
        {
            NSLog(@"%i %i/%i", wholeNumber, numerator, denominator);
        }
    }
}
-(double) convertToNum
{
    if (denominator != 0)
        return (double) numerator/denominator;
    else
        return NAN;
}
-(void) setTo:(int)n over:(int)d
{
    numerator = n;
    denominator = d;
}

-(Fraction *) add:(Fraction *)f
{
    //to add two fractions a/b + c/d = ((a*d)+(b*c))/ (b * d)
    //numerator = numerator * f.denominator + denominator * f.numerator;
    Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator * f.denominator + denominator * f.numerator;
    result.denominator = denominator * f.denominator;
   // [result reduce];
    return result;
}
-(Fraction *) substract:(Fraction *)f
{
    Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator * f.denominator - denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    //[result reduce];
    return result;
}
-(Fraction *) multiply:(Fraction *)f
{
    Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator * f.numerator;
    result.denominator = denominator * f.denominator;
    //[result reduce];
    return result;
}
-(Fraction *) divide:(Fraction *)f
{
    Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator * f.denominator;
    result.denominator = denominator * f.numerator;
    //[result reduce];
    return result;
}
-(void) reduce
{
    int u = numerator;
    int v = denominator;
    int temp;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    numerator /= u;
    denominator /= u;
}
-(int) mixed
        {
            int wholeNumber=0;
            while (numerator > denominator)
            {numerator = numerator - denominator;
                wholeNumber += 1;
            }
            return wholeNumber;
        }
@end
