//
//  Rectangle.m
//  Rectangle
//
//  Created by Anatolii Reva on 10/18/14.
//  Copyright (c) 2014 Anatolii Reva. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
@synthesize width, height;

-(void) setWidth:(int) w andHeight: (int) h
{
    width = w;
    height = h;
}

- (int) area
{
    return width * height;
}

- (int) perimeter
{
    return (width + height) * 2;
}
 
@end
