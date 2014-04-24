//
//  ViewController.m
//  Intentions
//
//  Created by Ionut Ivan on 22/04/14.
//  Copyright (c) 2014 Ionut Ivan. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "ModelContainer.h"

@interface ViewController ()

@property (nonatomic) IBOutlet ModelContainer *modelContainer;

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	Person *person = [Person new];
  person.name = @"Ionut";
  self.modelContainer.model = person;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
