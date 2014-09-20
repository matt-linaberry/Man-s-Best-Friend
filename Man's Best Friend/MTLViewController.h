//
//  MTLViewController.h
//  Man's Best Friend
//
//  Created by Matthew Linaberry on 9/19/14.
//
//

#import <UIKit/UIKit.h>

@interface MTLViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *myImageView;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *breedLabel;
@property (strong, nonatomic) NSMutableArray *myDogs;
@property (nonatomic) int lastDogSelected;

- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender;
- (void) printHelloWorld;
@end
