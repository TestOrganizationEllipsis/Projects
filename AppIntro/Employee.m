//
//  Employee.m
//  AppIntro
//
//  Created by Eranjan Punchihewa on 11/8/12.
//  Copyright (c) 2012 Eranjan Punchihewa. All rights reserved.
//

#import "Employee.h"


@implementation Employee

@synthesize rate,workingHours;

- (void)setFirstName:(NSString *)firstname
{
    firstName = firstname;
}

- (NSString *)firstName
{
    return firstName;
}

- (void)setLastName:(NSString *)lastname
{
    lastName = lastname;
}

- (NSString *)lastName
{
    return lastName;
}

-(double)calculateSalary{
    
    return (self.workingHours * self.rate);

}

@end
