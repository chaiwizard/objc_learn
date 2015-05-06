//
//  ConcurrentProcessor.m
//  ConcurrentThreads
//
//  Created by iotek IOTEK on 15-5-6.
//  Copyright (c) 2015年 __MyCompanyName__. All rights reserved.
//

#import "ConcurrentProcessor.h"

@interface ConcurrentProcessor()
@property (readwrite) NSInteger computeResult;
@end

@implementation ConcurrentProcessor 
{
    NSString *computeID;//Unique object for @synchronize lock
    NSInteger computeTasks;//count of number of concurrent compute task
    NSLock *computeLock;//lock object
    
}

@synthesize isFinished = _isFinished,computeResult = _computeResult;


-(id) init
{
    if(self = [super init])
    {
        _isFinished = NO;
        _computeResult = 0;
        computeLock = [NSLock new];
        computeID = @"1";
        computeTasks = 0;
        
    }
    
    return self;
}

- (void) computeTask:(id)data
{
    NSAssert(([data isKindOfClass:[NSNumber class]]),@"Not a NSNumber instance");
    
    NSInteger computations = [data unsignedIntValue];
    @autoreleasepool {
        //Obtain lock and increment number of active tasks  
        if([[NSThread currentThread] isCancelled])
        {
            return;
        }
        
        @synchronized(computeID){
            computeTasks++;
        }
        
        //obtain lock and perform computation in critical section
        [computeLock lock];
        if([[NSThread currentThread] isCancelled])
        {
            [computeLock unlock];
            return;
        }
        
        NSLog(@"Perform computation");
        for(int ii=0; ii < computations; ++ii)
        {
            _computeResult+=1;
        }
        
        [computeLock unlock];
        
        //Simulate additional processing time
        [NSThread sleepForTimeInterval:1];
        
        //Decrease the number of active tasks 
        @synchronized(computeID)
        {
            computeTasks--;
            if(!computeTasks)
            {
                _isFinished = YES;
            }
        }
    }
    
}


@end
