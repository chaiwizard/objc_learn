//
//  Drawing.h
//  protocol
//
//  Created by iotek IOTEK on 15-5-8.
//  Copyright (c) 2015年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Drawing <NSObject>

@required

- (void) draw;

- (void) erase;

@optional

- (void) outline;

@end
