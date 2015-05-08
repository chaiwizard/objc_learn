#import <Foundation/Foundation.h>

@interface BNRLogger : NSObject

@property (nonatomic,retain) NSDate *lastTime;

- (NSString *)lastTimeString;

- (NSString *)lastTimeString;
- (void)updateLastTime: (NSTimer *) t;

@end

