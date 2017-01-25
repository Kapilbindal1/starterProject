//
//  ViewController.m
//  Sample_Project


#import "ShowFriendsDataViewController.h"
#import "FriendsDataTableViewCell.h"

@interface ShowDataViewController()


@end

@implementation ShowDataViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    friendsDataManager = [FriendDataManager sharedInstance];
    friendsArray = [friendsDataManager getFriendData];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    
    
    
    
    return friendsArray.count;;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    FriendsDataTableViewCell *cell = (FriendsDataTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"friends_data_cell"];
    [cell setup:[friendsArray objectAtIndex:indexPath.row]];

    
    return cell;
}


@end
