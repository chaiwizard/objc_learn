#import "test.h"

@interface Test ()
int val;
@end

@implementation Test

- (id) initWithVal : (int) data
{
	if(self = [self init]){
		val = data;
	}

	return self;
}

- (int) getVal
{
	return val;
}

- (void) setVal : (int) data
{
	val = data;
}


@end
