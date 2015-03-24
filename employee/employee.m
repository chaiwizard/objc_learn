#import "employee.h"

@implementation Employee

@synthesize employeeID;
@synthesize officeAlarmCode;
@synthesize hireDate;

- (double) yearsOfEmployment
{
	if(self.hireDate) {
		//NSTimeInterval is the same as double
		NSDate *now = [NSDate date];
		NSTimeInterval secs = [now timeIntervalSinceDate: self.hireDate];
		return secs / 31557600.0; //Seconds per year
	}else{
		return 0;
	}
}

@end
