//
//  Course.m
//  Poly Schedule
//
//  Created by Alex Ottoboni on 9/26/14.
//  Copyright (c) 2014 Alex Ottoboni. All rights reserved.
//
#import "Course.h"

// Constant keys
NSString * const kSubject = @"kSubject";
NSString * const kCourseNumber = @"kCourseNumber";
NSString * const kBuildingName = @"kBuildingName";
NSString * const kBuildingNumber = @"kBuildingNumber";
NSString * const kRoomNumber = @"kRoomNumber";
NSString * const kOnMonday = @"kOnMonday";
NSString * const kOnTuesday = @"kOnTuesday";
NSString * const kOnWednesday = @"kOnWednesday";
NSString * const kOnThursday = @"kOnThursday";
NSString * const kOnFriday = @"kOnFriday";
NSString * const kStartTime = @"kStartTime";
NSString * const kEndTime = @"kEndTime";
NSString * const kProfessor = @"kProfessor";

// Class body
@implementation Course

- (id) init
{
    self = [super init];
    if (self)
    {
        _subject = @"Not Given";
        _courseNumber = @"Not Given";
        _buildingName = @"Not Given";
        _buildingNumber = @"Not Given";
        _roomNumber = @"Test";
        _onMonday = FALSE;
        _onTuesday = FALSE;
        _onWednesday = FALSE;
        _onThursday = FALSE;
        _onFriday = FALSE;
        _startTime = 10;
        _endTime = 11;
        _professor = @"Ottoboni";
    }
    return self;
}

+ (Course *)sharedInstance
{
    static Course *_sharedInstance = nil;
    static dispatch_once_t onceSecurePredicate;
    dispatch_once(&onceSecurePredicate,^
                  {
                      _sharedInstance = [[self alloc] init];
                  });
    
    return _sharedInstance;
}

//in this example you are saving data to NSUserDefault's
//you could save it also to a file or to some more complex
//data structure: depends on what you need, really

-(void)saveData
{
    [[NSUserDefaults standardUserDefaults] setObject:self.subject forKey:kSubject];
    [[NSUserDefaults standardUserDefaults] setObject:self.courseNumber forKey:kCourseNumber];
    [[NSUserDefaults standardUserDefaults] setObject:self.buildingName forKey:kBuildingName];
    [[NSUserDefaults standardUserDefaults] setObject:self.buildingNumber forKey:kBuildingNumber];
    [[NSUserDefaults standardUserDefaults] setObject:self.roomNumber forKey:kRoomNumber];
    [[NSUserDefaults standardUserDefaults] setBool:self.onMonday forKey:kOnMonday];
    [[NSUserDefaults standardUserDefaults] setBool:self.onTuesday forKey:kOnTuesday];
    [[NSUserDefaults standardUserDefaults] setBool:self.onWednesday forKey:kOnWednesday];
    [[NSUserDefaults standardUserDefaults] setBool:self.onThursday forKey:kOnThursday];
    [[NSUserDefaults standardUserDefaults] setBool:self.onFriday forKey:kOnFriday];
    [[NSUserDefaults standardUserDefaults] setDouble:self.startTime forKey:kStartTime];
    [[NSUserDefaults standardUserDefaults] setDouble:self.endTime forKey:kEndTime];
    [[NSUserDefaults standardUserDefaults] setObject:self.professor forKey:kProfessor];
    
    [[NSUserDefaults standardUserDefaults] synchronize];
}

-(void)loadData
{
    if ([[NSUserDefaults standardUserDefaults] objectForKey:kSubject])
    {
        self.subject = [[NSUserDefaults standardUserDefaults] stringForKey:kSubject];
        self.courseNumber = [[NSUserDefaults standardUserDefaults] stringForKey:kCourseNumber];
        self.buildingName = [[NSUserDefaults standardUserDefaults] stringForKey:kBuildingName];
        self.buildingNumber = [[NSUserDefaults standardUserDefaults] stringForKey:kBuildingNumber];
        self.roomNumber = [[NSUserDefaults standardUserDefaults] stringForKey:kRoomNumber];
        self.onMonday = [[NSUserDefaults standardUserDefaults] boolForKey:kOnMonday];
        self.onTuesday = [[NSUserDefaults standardUserDefaults] boolForKey:kOnTuesday];
        self.onWednesday = [[NSUserDefaults standardUserDefaults] boolForKey:kOnWednesday];
        self.onThursday = [[NSUserDefaults standardUserDefaults] boolForKey:kOnThursday];
        self.onFriday = [[NSUserDefaults standardUserDefaults] boolForKey:kOnFriday];
        self.startTime = [[NSUserDefaults standardUserDefaults] doubleForKey:kStartTime];
        self.endTime =[[NSUserDefaults standardUserDefaults] doubleForKey:kEndTime];
        self.professor = [[NSUserDefaults standardUserDefaults] stringForKey:kSubject];
        
        NSLog(self.subject);
        
        
    }
    else
    {
        self.subject = @"Test";
        self.courseNumber = @"Test";
        self.buildingName = @"Test";
        self.buildingNumber = @"Test";
        self.roomNumber = @"Test";
        self.onMonday = FALSE;
        self.onTuesday = FALSE;
        self.onWednesday = FALSE;
        self.onThursday = FALSE;
        self.onFriday = FALSE;
        self.startTime = 10;
        self.endTime = 11;
        self.professor = @"Ottoboni";
    } 
}

@end




