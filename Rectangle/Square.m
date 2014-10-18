//
//  Square.m
//  Rectangle
//
//  Created by Anatolii Reva on 10/18/14.
//  Copyright (c) 2014 Anatolii Reva. All rights reserved.
//

#import "Square.h"

@implementation Square

- (void) setSide:(int)s
{
    [self setWidth:s andHeight:s];
}

- (int) side
{
    return self.width;
}

@end
