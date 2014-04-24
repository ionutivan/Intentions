//
//  ObserverIntention.m
//  Intentions
//
//  Created by Ionut Ivan on 22/04/14.
//  Copyright (c) 2014 Ionut Ivan. All rights reserved.
//

#import "ObserverIntention.h"

@interface ObserverIntention()

@property (nonatomic, strong) IBOutlet id sourceObject;
@property (nonatomic, strong) IBOutlet id target;
@property (nonatomic, copy) IBOutlet NSString *sourceKeyPath;
@property (nonatomic, copy) IBOutlet NSString *targetKeyPath;

@end

@implementation ObserverIntention

- (void)awakeFromNib {
  
  [super awakeFromNib];
  [self updateValue];
  [self.sourceObject addObserver:self
                      forKeyPath:self.sourceKeyPath
                         options:0
                         context:nil];
  
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
  
  if ([keyPath isEqualToString:self.sourceKeyPath]) {
    [self updateValue];
  }
  
}

- (void)updateValue {
  
  id value = [self.sourceObject valueForKeyPath:self.sourceKeyPath];
  if (self.targetKeyPath) {
    [self.target setValue:value forKeyPath:self.targetKeyPath];
  }
  
}

@end
