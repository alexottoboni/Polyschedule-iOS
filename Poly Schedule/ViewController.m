//
//  ViewController.m
//  Poly Schedule
//
//  Created by Alex Ottoboni on 9/26/14.
//  Copyright (c) 2014 Alex Ottoboni. All rights reserved.
//

#import "ViewController.h"
#import "Course.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)displayCourse {
    // Subject Label
    UILabel *subjectLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 30, 200, 20)];
    [subjectLabel setBackgroundColor:[UIColor clearColor]];
    [subjectLabel setText:[@"Subject Name: " stringByAppendingString:[Course sharedInstance].subject]];
    [[self view] addSubview:subjectLabel];
    
    // Course Number Label
    UILabel *courseNumberLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 50, 250, 20)];
    [courseNumberLabel setBackgroundColor:[UIColor clearColor]];
    [courseNumberLabel setText:[@"Course Number: " stringByAppendingString:[Course sharedInstance].courseNumber]];
    [[self view] addSubview:courseNumberLabel];
    
    // Course Number Label
    UILabel *buildingNameLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 70, 250, 20)];
    [buildingNameLabel setBackgroundColor:[UIColor clearColor]];
    [buildingNameLabel setText:[@"Building Name: " stringByAppendingString:[Course sharedInstance].buildingName]];
    [[self view] addSubview:buildingNameLabel];
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self displayCourse];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
