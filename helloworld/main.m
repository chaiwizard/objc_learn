#import <Foundation/Foundation.h>

int main(int argc, char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	NSLog(@"Hello,World!");
	
	//Display the current date, formatted nicely
	NSDate *dateTime = [NSDate date];
	NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
	[dateFormat setDateFormat:@"EEE MMM d, yyyy"];
	NSString *dateString = [dateFormat stringFromDate:dateTime];
	NSLog(@"Today's date is %@",dateString);

	[pool drain];
	return 0;
}
