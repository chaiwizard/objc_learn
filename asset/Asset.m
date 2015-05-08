//
//  Asset.m
//  Person
//
//  Created by iotek IOTEK on 15-5-8.
//  Copyright (c) 2015年 __MyCompanyName__. All rights reserved.
//

#import "Asset.h"

@implementation Asset

@synthesize label = _label;
@synthesize resaleValue = _resaleValue;

- (NSString*) description
{
    return [NSString stringWithFormat:@"<%@ :$ %u>",_label,_resaleValue];
}
            
- (void) dealloc
{
    NSLog(@"Asset dealloc");
}
            
            
            

@end
