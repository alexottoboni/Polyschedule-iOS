//
//  UIViewController+Configure.m
//  Poly Schedule
//
//  Created by Alex Ottoboni on 9/27/14.
//  Copyright (c) 2014 Alex Ottoboni. All rights reserved.
//

#import "Configure.h"
#import "Course.h"

@interface UIViewController ()

@end

@implementation UIViewController (Configure)

// Closes the keyboard when touch outside the keyboard
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [[event allTouches] anyObject];
    
    if (![[touch view] isKindOfClass:[UITextField class]]) {
        [self.view endEditing:YES];
    }
    [super touchesBegan:touches withEvent:event];
}


@end
