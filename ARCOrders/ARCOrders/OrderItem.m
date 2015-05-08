//
//  OrderItem.m
//  ARCOrders
//
//  Created by iotek IOTEK on 15-3-27.
//  Copyright (c) 2015年 __MyCompanyName__. All rights reserved.
//

#import "OrderItem.h"

@implementation OrderItem

- (id) initWithName:(NSString *) iname{
    if(self = [super init]){
        NSLog(@"Initializing OrderItem object");
        
        name = iname;
    }
    
    return self;
}

- (void) dealloc{
    NSLog(@"Deallocating OrderItem object");
}     

@end
