//
//  ViewController.h
//  Sample_Project


#import <UIKit/UIKit.h>
#import "FriendDataManager.h"


@interface ShowDataViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>{
    FriendDataManager *friendsDataManager;
    NSArray *friendsArray;
    
}


@end

