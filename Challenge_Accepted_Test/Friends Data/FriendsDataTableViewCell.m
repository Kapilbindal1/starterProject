//
//  FriendsDataTableViewCell.m
//  Sample_Project

#import "FriendsDataTableViewCell.h"



@implementation FriendsDataTableViewCell


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
    
}

// Setup friends data to components
-(void) setup:(FriendsData *)friendData{
    _profilePic.image = [UIImage imageNamed:friendData.profile_Pic];
    _nameLabel.text = friendData.name;
    _ageLabel.text = friendData.age;
}

@end

