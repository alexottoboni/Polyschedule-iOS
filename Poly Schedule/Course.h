//
//  Course.h
//  Poly Schedule
//
//  Created by Alex Ottoboni on 9/26/14.
//  Copyright (c) 2014 Alex Ottoboni. All rights reserved.
//

#ifndef Poly_Schedule_Course_h
#define Poly_Schedule_Course_h

// Header
#import <Foundation/Foundation.h>

@interface Course : NSObject

+ (Course *)sharedInstance;

@property (assign) NSString* subject;
@property (assign) NSString* courseNumber;

@property (assign) NSString* buildingName;
@property (assign) NSString* buildingNumber;

@property (assign) NSString* roomNumber;

@property (assign) BOOL onMonday;
@property (assign) BOOL onTuesday;
@property (assign) BOOL onWednesday;
@property (assign) BOOL onThursday;
@property (assign) BOOL onFriday;

@property (assign) double startTime;
@property (assign) double endTime;

@property (assign) NSString* professor;

-(void) saveData;
-(void) loadData;

@end


#endif
