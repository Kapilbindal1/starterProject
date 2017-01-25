//
//  DataManager.m
//  Sample_Project
//
//  Created by Chavi Jindal on 25/01/17.
//  Copyright © 2017 Chavi Jindal. All rights reserved.
//

#import "FriendDataManager.h"
#import "FriendsData.h"

#define profilePicName @"avatar_1.png"

@implementation FriendDataManager

+(instancetype)sharedInstance{
    static FriendDataManager* instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[FriendDataManager alloc] init];
    });
    
    return instance;
}

-(NSArray *)getFriendData{
    NSMutableArray* friendArray = [NSMutableArray array];
    for(int friendNumber = 0; friendNumber<10; friendNumber++){
        FriendsData* data = [[FriendsData alloc] init];
        data.profile_Pic = [NSString stringWithFormat:profilePicName];
        
        data.name = [NSString stringWithFormat:@"FriendName_%i", friendNumber];
        
        data.age = [NSString stringWithFormat:@"%i", 10+friendNumber];
        
        
        [friendArray addObject:data];
    }
    
    return friendArray;
}

@end
