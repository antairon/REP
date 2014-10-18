//
//  main.m
//  Rectangle
//
//  Created by Anatolii Reva on 10/18/14.
//  Copyright (c) 2014 Anatolii Reva. All rights reserved.
//

#import "Square.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Square * mySquare = [Square new];
        [mySquare setSide:5];
        NSLog(@"Square side is: %i", mySquare.side);
        NSLog(@"Square area is: %i", [mySquare area]);
        NSLog(@"Square perimeter is: %i", [mySquare perimeter]);
    }
    return 0;
}
