//
//  DataManager.h
//  Sample_Project
//
//  Created by Chavi Jindal on 25/01/17.
//  Copyright © 2017 Chavi Jindal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FriendDataManager : NSObject
+(instancetype) sharedInstance;

-(NSArray *)getFriendData;
@end
