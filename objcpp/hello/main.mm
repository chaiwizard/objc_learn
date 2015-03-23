/**
 * g++ -x objective-c++ -framework Foundation main.mm -o hello
 */
#import <Foundation/Foundation.h>

class Hello{
public:
	Hello() {
		greeting_text = @"Hello, world!";	
	}

	Hello(const char* initial_greeting_text){
		greeting_text = [[NSString alloc]initWithUTF8String:initial_greeting_text];
	}

	void say_hello() {
		printf("%s\n",[greeting_text UTF8String]);
	}

private:
	id greeting_text;//holds a NSString
	
};

@interface Greeting : NSObject {
@private
	Hello *hello;
};

-(id)init;
-(void)dealloc;
-(void)sayGreeting;
-(void)sayGreeting:(Hello*)greeting;

@end

@implementation Greeting

-(id)init{
	if(self = [super init]){
		hello = new Hello();
	}

	return self;
}

-(void)dealloc{
	delete hello;
	[super dealloc];
}

-(void)sayGreeting{
	hello->say_hello();
}

-(void)sayGreeting:(Hello*)greeting{
	greeting->say_hello();
}


@end

int main()
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];

	Greeting *greeting = [[Greeting alloc]init];
	[greeting sayGreeting];

	Hello *hello = new Hello("Objective C++");
	[greeting sayGreeting:hello];

	delete hello;
	
	[greeting release];
	[pool release];
	return 0;
}
