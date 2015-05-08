//
//  main.m
//  MRROrders
//
//  Created by iotek IOTEK on 15-3-27.
//  Copyright (c) 2015年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ObjectEntry.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSString *orderId = [[NSString alloc]initWithString:@"A1"];
        ObjectEntry *entry = [[ObjectEntry alloc]initWithId:orderId];
        
        [orderId release];
        
        NSLog(@"New Order ID=%@,item=%@",entry->orderId,entry->item->name);
        
        [entry release];
        
        ObjectEntry *entry2 = [[[ObjectEntry alloc]initWithId:@"A2"] autorelease];
        NSLog(@"New Order ID=%@,item=%@",entry2->orderId,entry2->item->name);        
    }
    return 0;
}

