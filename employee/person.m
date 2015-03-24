#import "person.h"

@implementation Person

@synthesize height;
@synthesize weight;

- (float) bodyMassIndex
{
	float h = [self height];
	return [self weight] / (h * h);
}

@end
