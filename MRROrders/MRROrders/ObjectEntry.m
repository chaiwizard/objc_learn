//
//  ObjectEntry.m
//  MRROrders
//
//  Created by iotek IOTEK on 15-3-27.
//  Copyright (c) 2015年 __MyCompanyName__. All rights reserved.
//

#import "ObjectEntry.h"

@implementation ObjectEntry

- (id) initWithId:(NSString *)oid
{
    if(self = [super init])
    {
        NSLog(@"Initializing OrderEntry object");
        orderId = oid;
        [orderId retain];
        item = [[OrderItem alloc]initWithName:@"Doddle"];
        shippingAddress = [[Address alloc]init];
    }
    
    return self;
}

- (void) dealloc
{
    
    NSLog(@"Deallocating OrderEntry object");
    [orderId release];
    [item release];
    [shippingAddress release];
    [super dealloc];
}

@end
