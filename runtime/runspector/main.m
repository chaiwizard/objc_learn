#import <Foundation/Foundation.h>
#import <objc/runtime.h>

//Test class 1
@interface TestClass1 : NSObject{
@public
	int myInt;
}
@end

@implementation TestClass1
@end

int main(int argc, char *argv[])
{
	@autoreleasepool{
		//Create a few instances of one class and display its data
		TestClass1 *tc1A = [[TestClass1 alloc] init];
		tc1A->myInt = 0xa5a5a5a5;
		TestClass1 *tc1B = [[TestClass1 alloc] init];
		tc1B->myInt = 0xc3c3c3c3;
		long tc1Size = class_getInstanceSize([TestClass1 class]);
		NSData *obj1Data = [NSData dataWithBytes:(__bridge const void*)(tc1A)
										  length:tc1Size];

		NSData *obj2Data = [NSData dataWithBytes:(__bridge const void*)(tc1B)
										  length:tc1Size];
		NSLog(@"TestClass1 object tc1 contains %@",obj1Data);
		NSLog(@"TestClass1 object tc2 contains %@",obj2Data);
		NSLog(@"TestClass1 memory address = %p",[TestClass1 class]);
	}
	
	return 0;
}
