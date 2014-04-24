//
//  DismissOnEnterIntention.m
//  Intentions
//
//  Created by Ionut Ivan on 22/04/14.
//  Copyright (c) 2014 Ionut Ivan. All rights reserved.
//

#import "DismissOnEnterIntention.h"

@implementation DismissOnEnterIntention

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
  
  if ([string isEqualToString:@"\n"]) {
    [textField resignFirstResponder];
    return NO;
  }
  return YES;
}

@end
