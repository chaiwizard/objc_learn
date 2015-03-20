#import "Calculator.h"

@implementation Calculator

-(NSNumber *) sumAddend1:(NSNumber*)adder1 addend2:(NSNumber*)adder2
{
	NSLog(@"Invoking method on %@ object with selector %@",[self className],NSStringFromSelector(_cmd));
	return [NSNumber numberWithInteger:([adder1 integerValue] + [adder2 integerValue])];
}

-(NSNumber *) sumAddend1:(NSNumber*)adder1 :(NSNumber*)adder2
{
	NSLog(@"Invoking method on %@ object with selector %@",[self className],NSStringFromSelector(_cmd));
	return [NSNumber numberWithInteger:([adder1 integerValue] + [adder2 integerValue])];
}

@end
