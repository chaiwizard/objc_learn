#import <Foundation/Foundation.h>
#include <stdlib.h>

#define ArrayElements 10

int main(int argc, char *argv[])
{
	@autoreleasepool{
		//Create an array of numbers with random values (0-99)
		NSMutableArray *numbers = [NSMutableArray arrayWithCapacity:ArrayElements];
		for( int elem=0;elem<ArrayElements; ++elem)
		{
			unsigned int value = arc4random() % 100;
			[numbers addObject:[NSNumber numberWithUnsignedInt:value]];
		}
		NSLog(@"Values: %@",numbers);

		[numbers sortUsingComparator:^(id obj1, id obj2){
			if([obj1 integerValue] > [obj2 integerValue]){
				return (NSComparisonResult)NSOrderedDescending;
			}

			if([obj1 integerValue] < [obj2 integerValue]){
				return (NSComparisonResult)NSOrderedAscending;
			}

			return (NSComparisonResult)NSOrderedSame;
		}];
		
		NSLog(@"Values: %@",numbers);
	}

	return 0;
}
