#import <Foundation/Foundation.h>
#import "BNRLogger.h"

int main(int argc, char *argv[])
{
	/*NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

	[pool drain];
	*/
	@autoreleasepool{
		BNRLogger *logger = [[BNRLogger alloc] init];

		NSTimer *timer =
				[NSTimer scheduledTimerWithTimeInterval:2.0
												 target:logger
											   selector:@selector(updateLastTime:)
											   userInfo:nil
											    repeats:YES];

		[[NSRunLoop currentRunLoop] run];
	}
	return 0;
}
