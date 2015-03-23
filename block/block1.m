#import <Foundation/Foundation.h>

int main(int argc, char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];

	void (^print_message)(void) = 
		^(void) {
			NSLog(@"Programming is fun.");
		};

	print_message();
	[pool drain];
	return 0;
}

