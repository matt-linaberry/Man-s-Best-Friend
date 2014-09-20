//
//  MTLDog.h
//  Man's Best Friend
//
//  Created by Matthew Linaberry on 9/19/14.
//
//

#import <Foundation/Foundation.h>

@interface MTLDog : NSObject

@property (nonatomic) int age;
@property (nonatomic, strong) NSString *breed;
@property (strong, nonatomic) UIImage *image;
@property (strong, nonatomic) NSString *name;

- (void) bark;
- (void) barkANumberOfTimes:(int)numberOfTimes;
- (void) changeBreedToWerewolf;
- (void) barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud;
- (int) ageInDogYearsFromAge:(int)regularAge;
@end
