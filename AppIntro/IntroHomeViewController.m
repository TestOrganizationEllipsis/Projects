//
//  IntroHomeViewController.m
//  AppIntro
//
//  Created by Eranjan Punchihewa on 11/8/12.
//  Copyright (c) 2012 Eranjan Punchihewa. All rights reserved.
//

#import "IntroHomeViewController.h"

@implementation IntroHomeViewController

@synthesize label,salaryLabel;
@synthesize currentEmployee;

-(void)viewDidLoad{
    [super viewDidLoad];
    
    currentEmployee = [[Employee alloc]init];
    NSString *firstName = currentEmployee.firstName = @"Eranjan";
    NSString *lastName = currentEmployee.lastName = @"Punchihewa";
    
    currentEmployee.rate = 200;
    currentEmployee.workingHours = 50;
   
    
    CGRect frame = CGRectMake(10, 10, 250, 40);
    self.label = [[UILabel alloc]initWithFrame:frame];
   
    self.label.text = [NSString stringWithFormat:@"%@ %@",firstName,lastName];
    
    CGRect buttonFrame = CGRectMake(10, 50, 150, 50);
    UIButton *calButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    calButton.frame = buttonFrame;
    [calButton setTitle:@"Calculate Salary" forState:UIControlStateNormal];
    
    [calButton addTarget:self action:@selector(showSalary) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:label];
    [self.view addSubview:calButton];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
}

-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
}

-(void)showSalary{
    CGRect frame = CGRectMake(10, 100, 250, 40);
    self.salaryLabel = [[UILabel alloc]initWithFrame:frame];
    
    self.salaryLabel.text = [NSString stringWithFormat:@"Salary : %f",[currentEmployee calculateSalary]];
    
    [self.view addSubview:salaryLabel];

}

@end
