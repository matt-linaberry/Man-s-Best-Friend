//
//  MTLPuppy.m
//  Man's Best Friend
//
//  Created by Matthew Linaberry on 9/20/14.
//
//

#import "MTLPuppy.h"

@implementation MTLPuppy
- (void) givePuppyEyes
{
    NSLog(@":(");
}

- (void) bark
{
    [super bark];
    NSLog(@"Whimper Whimper");
    [self givePuppyEyes];
}
@end
