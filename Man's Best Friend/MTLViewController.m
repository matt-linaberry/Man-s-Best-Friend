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
    myDog.age = 3;
    myDog.image = [UIImage imageNamed:@"St.Bernard.JPG"];
    
    MTLDog *secondDog = [[MTLDog alloc] init];
    secondDog.name = @"Wishbone";
    secondDog.breed = @"Jack Russell Terrier";
    secondDog.image = [UIImage imageNamed:@"JRT.jpg"];
    
    MTLDog *thirdDog = [[MTLDog alloc] init];
    thirdDog.name = @"Lassie";
    thirdDog.breed = @"Collie";
    thirdDog.image = [UIImage imageNamed:@"BorderCollie.jpg"];
    
    MTLDog *fourthDog = [[MTLDog alloc] init];
    fourthDog.name = @"Angel";
    fourthDog.breed = @"Greyhound";
    fourthDog.image = [UIImage imageNamed:@"ItalianGreyhound.jpg"];
    
    self.myDogs = [[NSMutableArray alloc] init];
    [self.myDogs addObject:myDog];
    [self.myDogs addObject:secondDog];
    [self.myDogs addObject:thirdDog];
    [self.myDogs addObject:fourthDog];
    
    self.myImageView.image = myDog.image;
    self.nameLabel.text = myDog.name;
    self.breedLabel.text = myDog.breed;
    self.lastDogSelected = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender
{
    int numberOfDogs = [self.myDogs count];
    int randomIndex = arc4random() % numberOfDogs;

    while (self.lastDogSelected == randomIndex)
    {
        randomIndex = arc4random() % numberOfDogs;
    }
    self.lastDogSelected = randomIndex;
    MTLDog *randomDog = [self.myDogs objectAtIndex:randomIndex];
//    self.myImageView.image = randomDog.image;
//    self.breedLabel.text = randomDog.breed;
//    self.nameLabel.text = randomDog.name;
    [UIView transitionWithView:self.view duration:.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        self.myImageView.image = randomDog.image;
        self.breedLabel.text = randomDog.breed;
        self.nameLabel.text = randomDog.name;
    } completion:^(BOOL finished) {
        
    }];
    sender.title = @"And Another";
}

- (void) printHelloWorld
{
    NSLog(@"Hello World!");
}

@end
