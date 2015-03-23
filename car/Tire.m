#import "Tire.h"

@implementation Tire

@synthesize pressure;
@synthesize treadDepth;

- (id) init
{
	if(self = [self initWithPressure : 34
						treadDepth   : 20]){
	
	}

	return self;
}

- (id) initWithPressure : (float) p
{
	if(self = [self initWithPressure : p
						treadDepth   : 20]){
	
	}

	return self;
	
}

- (id) initWithTreadDepth : (float) td
{
	if(self = [self initWithPressure : 34
						treadDepth   : td]){
	
	}

	return self;
}



@end
