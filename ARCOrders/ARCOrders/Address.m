//
//  Address.m
//  ARCOrders
//
//  Created by iotek IOTEK on 15-3-27.
//  Copyright (c) 2015年 __MyCompanyName__. All rights reserved.
//

#import "Address.h"

@implementation Address

- (id) init
{
    if(self = [super init]){
        NSLog(@"Initializing Address object");
    }
    
    return self;
}


- (void) dealloc
{
    NSLog(@"Deallocating Address object");
}

@end
