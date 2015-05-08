//
//  OrderItem.m
//  MRROrders
//
//  Created by iotek IOTEK on 15-3-27.
//  Copyright (c) 2015年 __MyCompanyName__. All rights reserved.
//

#import "OrderItem.h"

@implementation OrderItem

- (id) initWithName:(NSString *)itemName
{
    if(self = [super init]){
        NSLog(@"Initializing ObjectItem object");
        name = itemName;
        [name retain];
    }
    
    return self;
}

- (void) dealloc {
    NSLog(@"Deallocating ObjectItem object");
    [name release];
    [super dealloc];
}
       

@end
