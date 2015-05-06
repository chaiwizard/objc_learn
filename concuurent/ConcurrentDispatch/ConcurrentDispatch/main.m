//
//  main.m
//  ConcurrentDispatch
//
//  Created by iotek IOTEK on 15-5-6.
//  Copyright (c) 2015年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^ComputeTask)(void);

ComputeTask getComputeTask(NSInteger *result,NSUInteger computation)
{
    //NSInteger *computeResult = result;
    //NSUInteger computations = computation;
    
    return ^{
        [NSThread sleepForTimeInterval:1];

        for(int i=0;i<computation;i++)
        {
            *result += 1;
        }
   };
}



int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        NSInteger computeResult = 0;
        
        dispatch_queue_t queue = dispatch_queue_create("myserialqueue", DISPATCH_QUEUE_SERIAL);
        dispatch_group_t group = dispatch_group_create();
        dispatch_group_async(group, queue, getComputeTask(&computeResult,5));
        dispatch_group_async(group,queue, getComputeTask(&computeResult, 10));
        dispatch_group_wait(group, DISPATCH_TIME_FOREVER);
        NSLog(@"The computation result is %ld",computeResult);
        
    }
    return 0;
}

