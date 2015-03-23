#import "Atom.h"

@implementation Atom

@synthesize protons;
@synthesize neutrons;
@synthesize electrons;
@synthesize chemicalElement;

-(id) init
{
	if((self = [super init]))
	{
		chemicalElement = @"None";
	}

	return self;
}

-(NSUInteger) massNumber
{
	return 0;
}

@end
