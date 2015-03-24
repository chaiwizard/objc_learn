#import <Foundation/Foundation.h>

@interface Person : NSObject{
	float _height;//meters
	int _weight;//kilo
}

//Person has methods to read and set its instance variables
- (float) height;
- (void) setHeight: (float) h;
- (int) weight;
- (void) setWeight: (int) w;

//Person has a method that calculates the body mass index
- (float) bodyMassIndex;

@end
