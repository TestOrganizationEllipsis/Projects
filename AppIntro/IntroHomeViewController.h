//
//  IntroHomeViewController.h
//  AppIntro
//
//  Created by Eranjan Punchihewa on 11/8/12.
//  Copyright (c) 2012 Eranjan Punchihewa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

@interface IntroHomeViewController : UIViewController{
    Employee *currentEmployee;
}

@property (nonatomic,retain) Employee *currentEmployee;
@property (nonatomic, retain) IBOutlet UILabel *label;
@property (nonatomic, retain) IBOutlet UILabel *salaryLabel;

@end
