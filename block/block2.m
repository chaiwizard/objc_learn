#import <Foundation/Foundation.h>

int main(int argc, char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

	NSArray *originalStrings = [NSArray arrayWithObjects:@"Qiang",@"Chai",@"Iotek",@"Shanghai",nil];
	NSLog(@"original strings: %@", originalStrings);

	NSMutableArray *devowelizedStrings = [NSMutableArray array];

	NSArray *vewels = [NSArray arrayWithObjects : @"a",@"e",@"i",@"o",@"u", nil];

	//Declare the block variable
	void (^devowelizer)(id, NSUInteger, BOOL *);

	devowelizer = ^(id string, NSUInteger i, BOOL * stop) {
		NSMutableString * newString = [NSMutableString stringWithString:string];
		//Iterate over the array of vowels, replacing occurrences of each with an empty string
		for(NSString *s in vewels)
		{
			NSRange fullRange = NSMakeRange(0, [newString length]);
			[newString replaceOccurrencesOfString:s
										withString:@""
										   options:NSCaseInsensitiveSearch
											 range:fullRange];
		}

		[devowelizedStrings addObject:newString];
	};

	//Iterate over the array with your block
	[originalStrings enumerateObjectsUsingBlock : devowelizer];
	NSLog(@"devowelized string: %@",devowelizedStrings);
	
	[pool drain];
	return 0;
}

