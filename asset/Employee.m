//
//  Employee.m
//  Person
//
//  Created by iotek IOTEK on 15-5-8.
//  Copyright (c) 2015年 __MyCompanyName__. All rights reserved.
//

#import "Employee.h"
#import "Asset.h"

@implementation Employee

@synthesize employeeID;
@synthesize hireDate = _hireDate;
@synthesize officeAlarmCode;
@synthesize lastName,firstName;
@synthesize assets;


//Assets accessory
/*
- (void) setAssets:(NSMutableArray *)assets
{
    _assets = [assets mutableCopy];
}

- (NSArray*) assets{
    return [_assets copy];
}

*/

- (void) addAsset:(Asset *)a
{
    if(_assets == nil)
    {
        _assets = [[NSMutableArray alloc]init ];
    }
    
    [ _assets addObject:a];
}

- (unsigned int) valueOfAssets
{
    unsigned int sum = 0;
    for(Asset *a in _assets)
    {
        sum += a.resaleValue;
    }
    
    return sum;
}



- (float) yeasOfEmployment
{
    float ret = 0;
    if(_hireDate != nil){
        NSDate *now = [NSDate date];
        NSTimeInterval interval = [ now timeIntervalSinceDate:_hireDate];
        
        ret = interval / 31557600.00;
        
    }
    
    return ret;
}

- (NSString *) description
{
    return [NSString stringWithFormat:@"Employee %@ with %u : $%u", self.firstName,self.employeeID, [self valueOfAssets]];
}

- (void) dealloc
{
    NSLog(@" deallocating %@ ", self);
}


@end
