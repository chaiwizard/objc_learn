//
//  Person.m
//  Person
//
//  Created by iotek IOTEK on 15-5-8.
//  Copyright (c) 2015年 __MyCompanyName__. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize height = _height;
@synthesize weight = _weight;

- (float) bodyMassIndex
{
    return _weight / (_height * _height);
}

@end
