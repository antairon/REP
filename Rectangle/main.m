//
//  main.m
//  Rectangle
//
//  Created by Anatolii Reva on 10/18/14.
//  Copyright (c) 2014 Anatolii Reva. All rights reserved.
//

#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Rectangle * myRect = [[Rectangle alloc] init];
        [myRect setWidth:8 andHeight: 8];
        NSLog(@"Rectangle: w = %i, h = %i", myRect.width, myRect.height);
        NSLog(@"Area: %i", [myRect area]);
        NSLog(@"Perimeter: %i", [myRect perimeter]);
    
    }
    return 0;
}
