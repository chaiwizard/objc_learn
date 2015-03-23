#import <Foundation/Foundation.h>

@interface Tire : NSObject {
	float presure;
	float treadDepth;
}

@property float pressure;
@property float treadDepth;

- (id) initWithPressure: (float) pressure;
- (id) initWithTreadDepth: (float) treadDepth;

- (id) initwithPressure: (float) pressure
			treadDepth : (float) treadDepth;


@end

