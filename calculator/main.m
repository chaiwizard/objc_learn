#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

	id val;

	[val invalidate];

	Calculator *calc = [[Calculator alloc] init];
	NSNumber *addend1 = [NSNumber numberWithInteger:25];
	NSNumber *addend2 = [NSNumber numberWithInteger:10];
	NSNumber *addend3 = [NSNumber numberWithInteger:15];

	NSLog(@"Sum of %@ + %@ = %@",addend1,addend2,[calc sumAddend1:addend1 addend2:addend2]);
	NSLog(@"Sum of %@ + %@ = %@",addend1,addend2,[calc sumAddend1:addend1 :addend2]);

	SEL selector1 = @selector(sumAddend1:addend2:);
	id sum1 = [calc performSelector:selector1 withObject:addend1 withObject:addend2];
	NSLog(@"Sum of %@ + %@ = %@",addend1,addend2,sum1);

	[pool drain];
	return 0;
}
