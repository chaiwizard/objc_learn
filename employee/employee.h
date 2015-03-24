#import "person.h"

@interface Employee : Person

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic,retain) NSDate* hireDate;
- (double)yearsOfEmployment;


@end
