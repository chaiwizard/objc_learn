//
//  main.m
//  protocol
//
//  Created by iotek IOTEK on 15-5-8.
//  Copyright (c) 2015年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Rectangle.h"

#import "Circle.h"


void drawShape(id shape)
{
    [shape draw];
}

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        id rect = [[Rectangle alloc] init];
        //[rect draw];
        drawShape(rect);
        
        id circle = [[Circle alloc] init];
        drawShape(circle);
        
    }
    return 0;
}

