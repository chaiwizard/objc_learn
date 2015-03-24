#import "employee.h"

int main(int argc, char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

	//Create an instance of Person
	Employee *mikey = [[Employee alloc] init];

	//Give the instance variables interesting values using setters
	mikey.weight = 96;
	mikey.height = 1.8;
	mikey.employeeID = 12;
	mikey.hireDate = [NSDate dateWithNaturalLanguageString:@"Aug 2nd,2010"];

	//Log the instance variables using getters
	float height = mikey.height;
	int weight = mikey.weight;
	NSLog(@"mikey is %.2f meters tall and weight %d kilograms",height,weight);

	//Log some values using custom methods
	float bmi = [mikey bodyMassIndex];
	double years = [mikey yearsOfEmployment];
	NSLog(@"mikey has a BMI of %.2f,has worked with us for %2.f years",bmi,years);
	
	
	[pool drain];
	return 0;
}
