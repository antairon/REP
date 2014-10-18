//
//  Rectangle.h
//  Rectangle
//
//  Created by Anatolii Reva on 10/18/14.
//  Copyright (c) 2014 Anatolii Reva. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject

@property int width, height;

-(int) area;
-(int) perimeter;
-(void) setWidth:(int)w andHeight: (int) h;

@end
