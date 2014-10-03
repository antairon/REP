//
//  Fraction.m
//  Fraction
//
//  Created by Anatolii Reva on 10/2/14
//  Copyright (c) 2014 AIR. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
@synthesize numerator, denominator;
int wholeNumber;
//int numerator, denominator;
-(void) print: (BOOL) toReduce
{
    Fraction * printedResult = [[Fraction alloc]init];
    printedResult.numerator = numerator;
    printedResult.denominator = denominator;
    if (toReduce)
    {   [printedResult reduce];
        [printedResult wholeNumber];
                if (wholeNumber > 0)
                { NSLog(@"%i %i/%i", wholeNumber, printedResult.numerator, printedResult.denominator);
                    }
                else
                {
                NSLog (@"%i/%i", printedResult.numerator, printedResult.denominator);}
    }
    else
    {
        [printedResult wholeNumber];
        if (wholeNumber > 0)
        {NSLog(@"%i %i/%i", wholeNumber, printedResult.numerator, printedResult.denominator);
}
            else
            {
                NSLog (@"%i/%i", printedResult.numerator, printedResult.denominator);}
    }
    wholeNumber = 0;
   
}


-(int) wholeNumber
{
    if (numerator > 0 && denominator > 0 && numerator > denominator)
    {wholeNumber = numerator / denominator;
        numerator = numerator % denominator;
        return wholeNumber;}
    return NAN;
}

-(double) convertToNum
{
    if (denominator != 0)
        return (double) numerator / denominator;
    else
        return NAN;
}

-(void) setTo: (int) n over: (int) d
{
    numerator = n;
    denominator = d;
}

-(Fraction *) add: (Fraction *) f
{
    // To add two fractions:
    // a/b + c/d = ((a*d) + (b*c)) / (b * d)
    
    // result will store the result of the addition
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = numerator * f.denominator + denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    
    // [result setTo: result.numerator over: result.denominator];
    //  [result reduce];
    
    return result;
}

-(Fraction *) substract: (Fraction *) f
{
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = numerator * f.denominator - denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    
    // [result setTo: result.numerator over: result.denominator];
    //[result reduce];
    
    return result;
}
-(Fraction *) multiply: (Fraction *) f
{
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = numerator * f.numerator;
    result.denominator = denominator * f.denominator;
    
    //  [result setTo: result.numerator over: result.denominator];
    //[result reduce];
    
    return result;
}
-(Fraction *) divide: (Fraction *) f
{
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = numerator * f.denominator;
    result.denominator = denominator * f.numerator;
    
    //[result setTo: result.numerator over: result.denominator];
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

@end
