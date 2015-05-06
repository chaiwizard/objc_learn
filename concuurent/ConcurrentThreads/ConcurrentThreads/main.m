//
//  main.m
//  ConcurrentThreads
//
//  Created by iotek IOTEK on 15-5-6.
//  Copyright (c) 2015年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "ConcurrentProcessor.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        ConcurrentProcessor *processor = [ConcurrentProcessor new];
        
        [processor performSelectorInBackground:@selector(computeTask:) withObject:[NSNumber numberWithInt:5 ]];
        [processor performSelectorInBackground:@selector(computeTask:) withObject:[NSNumber numberWithInt:10 ]]; 
        
        while(!processor.isFinished)
        {
            ;
        }
        
        NSLog(@"The compute result is %ld",processor.computeResult);
    }
    return 0;
}

