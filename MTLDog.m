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

@end
