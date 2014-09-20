//
//  MTLViewController.m
//  Man's Best Friend
//
//  Created by Matthew Linaberry on 9/19/14.
//
//

#import "MTLViewController.h"
#import "MTLDog.h"
@interface MTLViewController ()

@end

@implementation MTLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    MTLDog *myDog = [[MTLDog alloc] init];
    myDog.name = @"Fido";
    myDog.breed = @"St. Brenard";
    myDog.age = 1;
    NSLog(@"My dog is named %@ and its' age is %i and the breed is %@", myDog.name, myDog.age, myDog.breed);
    myDog = nil;
    NSLog(@"My dog is named %@ and its' age is %i and the breed is %@", myDog.name, myDog.age, myDog.breed);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
