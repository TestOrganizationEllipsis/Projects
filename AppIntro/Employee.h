//
//  Employee.h
//  AppIntro
//
//  Created by Eranjan Punchihewa on 11/8/12.
//  Copyright (c) 2012 Eranjan Punchihewa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Employee : NSObject{
    NSString *firstName;
    NSString *lastName;
    
    int workingHours;
    double rate;
}

@property (nonatomic) int workingHours;
@property (nonatomic) double rate;

//setter
- (void)setFirstName:(NSString *)firstname;
- (void)setLastName:(NSString *)lastname;

//getter
- (NSString *)firstName;
- (NSString *)lastName;

- (double)calculateSalary;

@end
