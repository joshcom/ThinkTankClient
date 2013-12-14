//
//  ThinkTankRequest.h
//  ThinkTankClient
//
//  Created by Joshua Murray on 12/14/13.
//  Copyright (c) 2013 Joshua Murray. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ThinkTankConfig.h"
//#import "AFNetworking.h"

@interface ThinkTankRequest : NSObject
{
    ThinkTankConfig * configuration;
}

- (id)initWithConfiguration:(ThinkTankConfig *) config;


-(NSString*)buildRequestUri:(NSString*)path;

@end
