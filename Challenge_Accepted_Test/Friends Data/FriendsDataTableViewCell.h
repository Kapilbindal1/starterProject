//
//  FriendsDataTableViewCell.h
//  Sample_Project

#import <UIKit/UIKit.h>
#import "FriendsData.h"

@interface FriendsDataTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *profilePic;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;


-(void) setup:(FriendsData *)friendData;
@end
