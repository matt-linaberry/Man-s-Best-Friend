//
//  MTLDog.m
//  Man's Best Friend
//
//  Created by Matthew Linaberry on 9/19/14.
//
//

#import "MTLDog.h"

@implementation MTLDog
- (void) bark
{
    NSLog(@"Woof woof!!!");

}

- (void) barkANumberOfTimes:(int)numberOfTimes
{
    for (int bark = 1; bark <= numberOfTimes; bark++)
    {
        [self bark];
    }
}

- (void) changeBreedToWerewolf
{
    self.breed = @"Werewolf";
}

- (void) barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud
{
    if (!isLoud)
    {
        for(int bark = 1; bark <= numberOfTimes; bark++)
        {
            NSLog(@"Yip yip");
        }
    }
    else
    {
        for (int bark = 1; bark <= numberOfTimes; bark++)
        {
            NSLog(@"RUFF RUFF!!!");
        }
    }
}

- (int) ageInDogYearsFromAge:(int)regularAge
{
    int newAge = regularAge * 7;
    return newAge;
}
@end
