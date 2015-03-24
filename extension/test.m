#import "test.h"

@interface Test () {
	int val;
}

- (void) print;
@end

@implementation Test

- (id) initWithVal : (int) data
{
	if(self = [self init]){
		val = data;
	}
	[self print];
	return self;
}

- (int) getVal
{
	return val;
}

- (void) setVal : (int) data
{
	val = data;
	[self print];
}

- (void) print
{
	NSLog(@"print: val=%d",val);
}

@end
