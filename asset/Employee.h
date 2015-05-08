//
//  Employee.h
//  Person
//
//  Created by iotek IOTEK on 15-5-8.
//  Copyright (c) 2015年 __MyCompanyName__. All rights reserved.
//

#import "Person.h"


@class Asset;

@interface Employee : Person{
    NSMutableArray *_assets;
}

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic,retain) NSDate* hireDate;
@property (nonatomic,retain) NSString* lastName;
@property (nonatomic,retain) NSString* firstName;
//@property (nonatomic,retain) Person *spouse;
//@property (nonatomic,retain) NSMutableArray *children;
@property (nonatomic,copy) NSMutableArray *assets;


- (float) yeasOfEmployment;
- (void) addAsset:(Asset*) a;
- (unsigned int) valueOfAssets;




@end
