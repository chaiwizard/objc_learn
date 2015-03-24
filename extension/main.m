/**
 *Compile with :
 * clang -framework Foundation *.m -o app
 */

#import "test.h"

int main(int argc, char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

	Test *test = [[Test alloc] initWithVal : 2];

	NSLog(@"val = %d",[test getVal]);

	[test setVal: 10];

	NSLog(@"val = %d",[test getVal]);
	

	[pool drain];
	return 0;
}
