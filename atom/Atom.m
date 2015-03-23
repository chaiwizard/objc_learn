#import "Atom.h"

@interface Atom()


@end

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

	val = 0;

	return self;
}

-(NSUInteger) massNumber
{
	return 0;
}

@end
