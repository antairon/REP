// Implement a Calculator class

#import <Foundation/Foundation.h>

@interface Calculator: NSObject
{
    double accumulator, memory;
}

// accumulator methods
-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;

//Memory methods

-(void) memoryClear;
-(void) memoryStore;
-(double) memoryRecall;
-(double) memoryAdd: (double) value;
-(double) memorySubstract: (double) value;

// arithmetic methods
-(double) add: (double) value;
-(double) subtract: (double) value;
-(double) multiply: (double) value;
-(double) divide: (double) value;
@end

@implementation Calculator
-(void) memoryClear
{
    memory = 0;
}
-(double) memoryRecall
{
    return memory;
}
-(void) memoryStore
{
    memory = accumulator;
}
-(double) memoryAdd:(double) value
{
    memory += value;
    return memory;
}
-(double) memorySubstract:(double)value
{
    memory-= value;
    return memory;
}
-(void) setAccumulator: (double) value
{
    accumulator = value;
}

-(void) clear;
{
    accumulator = 0;
}

-(double) accumulator
{
    return accumulator;
}

-(double) add: (double) value
{
    accumulator += value;
    return accumulator;
}

-(double) subtract: (double) value
{
    accumulator -= value;
        return accumulator;
}

-(double) multiply: (double) value
{
    accumulator *= value;
        return accumulator;
}

-(double) divide: (double) value;
{
    accumulator /= value;
    return accumulator;
}
@end;

int main (int argc, char *argv[])
{
    @autoreleasepool {
    
    Calculator *deskCalc = [[Calculator alloc] init];
    
    [deskCalc clear];
        NSLog(@"Initial number is 100");
        [deskCalc setAccumulator:100.];
        NSLog(@"Adding 30 - result %f", [deskCalc add:30]);
        NSLog(@"Substract 10 - result %f", [deskCalc subtract:10]);
        NSLog(@"Multiply by 3 - result %f", [deskCalc multiply:3]);
        NSLog(@"Divide by 2 - result %f", [deskCalc divide:2]);
        NSLog(@"Put result in memory");
        [deskCalc memoryClear];
        [deskCalc memoryStore];
        NSLog(@"Add 10 to memory: result %f", [deskCalc memoryAdd:10]);
        NSLog(@"Substract 5: %f", [deskCalc memorySubstract:5]);
        }
    return 0;
}