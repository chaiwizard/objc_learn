#import "person.h"

int main(int argc, char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

	//Create an instance of Person
	Person *mikey = [[Person alloc] init];

	//Give the instance variables interesting values using setters
	[mikey setWeight: 96];
	[mikey setHeight: 1.8];

	//Log the instance variables using getters
	float height = [mikey height];
	int weight = [mikey weight];
	NSLog(@"mikey is %.2f meters tall and weight %d kilograms",height,weight);

	//Log some values using custom methods
	float bmi = [mikey bodyMassIndex];
	NSLog(@"mikey has a BMI of %.2f",bmi);
	
	[pool drain];
	return 0;
}
