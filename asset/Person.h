//
//  Person.h
//  Person
//
//  Created by iotek IOTEK on 15-5-8.
//  Copyright (c) 2015年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic) float height;//in meters
@property (nonatomic) int weight;//in kilos

- (float) bodyMassIndex;

@end
