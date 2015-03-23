#import <Foundation/Foundation.h>
#import "Atom.h"

int main(int argc, char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

	Atom *atom = [[Atom alloc] init];
	NSLog(@"Atom chemical element name: %@",atom.chemicalElement);

	[pool drain];
	return 0;
}
