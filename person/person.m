#import "person.h"

@implementation Person

- (float) height
{
	return _height;
}

- (void) setHeight: (float) h
{
	_height = h;
}

- (int) weight
{
	return _weight;
}

- (void) setWeight : (int) w
{
	_weight = w;
}

- (float) bodyMassIndex
{
	return _weight / (_height * _height);
}

@end
