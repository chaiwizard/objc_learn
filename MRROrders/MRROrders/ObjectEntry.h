//
//  ObjectEntry.h
//  MRROrders
//
//  Created by iotek IOTEK on 15-3-27.
//  Copyright (c) 2015年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "OrderItem.h"
#import "Address.h"

@interface ObjectEntry : NSObject
{
@public OrderItem *item;
    NSString *orderId;
    Address *shippingAddress;
    
}

- (id) initWithId: (NSString*) oid;

@end
