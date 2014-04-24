//
//  UppercaseIntention.m
//  Intentions
//
//  Created by Ionut Ivan on 22/04/14.
//  Copyright (c) 2014 Ionut Ivan. All rights reserved.
//

#import "UppercaseIntention.h"
#import "ModelContainer.h"

@interface UppercaseIntention()

@property (nonatomic) IBOutlet UITextField *textField;
@property (nonatomic) IBOutlet ModelContainer *modelContainer;
@property (copy, nonatomic) NSString *modelKeyPath;

- (IBAction)capitalize:(id)sender;

@end

@implementation UppercaseIntention

- (IBAction)capitalize:(id)sender {
  
  [self.modelContainer.model setValue:self.textField.text.uppercaseString
                           forKeyPath:self.modelKeyPath];
  
}

@end
