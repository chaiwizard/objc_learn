//
//  ObjectEntry.m
//  ARCOrders
//
//  Created by iotek IOTEK on 15-3-27.
//  Copyright (c) 2015年 __MyCompanyName__. All rights reserved.
//

#import "ObjectEntry.h"

@implementation ObjectEntry


- (id) initWithId:(NSString *)oid
{
    if(self = [super init]){
        NSLog(@"Initializing ObjectEntry object");
        orderId = oid;
        shippingAddress = [[Address alloc]init];
        item = [[OrderItem alloc]initWithName:@"Doddle"];
    }
    
    return self;
}

- (void) dealloc
{
    NSLog(@"Deallocating ObjectEntry object");
}

@end
