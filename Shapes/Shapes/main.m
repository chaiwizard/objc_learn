//
//  main.m
//  Shapes
//
//  Created by iotek IOTEK on 15-5-6.
//  Copyright (c) 2015年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#include "Shape.h"


void drawAllShapes(NSArray *shapes)
{
    for(Shape *shape in shapes)
    {
        [shape draw];
    }
}

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        id rect = [[Rectangle alloc]init];
        id circle = [[Circle alloc]init];
        
        NSArray *shapes = [[NSArray alloc]initWithObjects:rect,circle, nil];
        drawAllShapes(shapes);
        
    }
    return 0;
}

