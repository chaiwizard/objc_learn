#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic) float height;
@property (nonatomic) int weight;

//Person has a method that calculates the body mass index
- (float) bodyMassIndex;

@end
