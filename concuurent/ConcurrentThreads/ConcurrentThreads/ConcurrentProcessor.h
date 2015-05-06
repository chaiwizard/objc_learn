//
//  ConcurrentProcessor.h
//  ConcurrentThreads
//
//  Created by iotek IOTEK on 15-5-6.
//  Copyright (c) 2015年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ConcurrentProcessor : NSObject
{
@private
    BOOL _isFinished;
    NSInteger _computeResult;
}

@property (readwrite) BOOL isFinished;
@property (readonly) NSInteger computeResult;

- (void) computeTask: (id) data;

@end
