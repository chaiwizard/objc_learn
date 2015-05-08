//
//  main.m
//  Person
//
//  Created by iotek IOTEK on 15-5-8.
//  Copyright (c) 2015年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Employee.h"
#import "Asset.h"


int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        /*
        Person *tom = [[Person alloc] init];
        tom.height = 1.8;
        tom.weight = 96;
        
        NSLog(@"Tom's bmi is %.2f",[tom bodyMassIndex]);
        */
        
        /*
        Employee *tom = [[Employee alloc] init];
        tom.height = 1.8;
        tom.weight = 96;
        tom.employeeID = 12;
        tom.officeAlarmCode = 123456;
        tom.hireDate = [ NSDate dateWithNaturalLanguageString:@"8/22/2013"];
        
        float years = [tom yeasOfEmployment];
        NSLog(@"Tom's years of employment is %.2f",years);
        */
    
        
        for(int i=0; i < 10; ++i)
        {
            //Create an instance of employee
        }
        
        Employee *tom = [[Employee alloc] init];
        
        tom.firstName = @"Tom";
        tom.lastName = @"Chen";
        tom.weight = 90;
        tom.height = 1.8;
        tom.employeeID = 12;
        
        Asset *laptop1 = [[Asset alloc] init];
        laptop1.label = @"ThinkPad";
        laptop1.resaleValue = 100;
        
        [tom addAsset:laptop1];
        
        Asset *laptop2 = [[Asset alloc] init];
        laptop2.label = @"Acer";
        laptop2.resaleValue = 200;
        [tom addAsset:laptop2];
        
        NSLog(@"before set tom to nil");
        tom = nil;
        NSLog(@"afger set tom to nil");
        
        
    }
    return 0;
}

