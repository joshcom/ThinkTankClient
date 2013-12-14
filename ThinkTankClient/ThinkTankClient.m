//
//  ThinkTankClient.m
//  ThinkTankClient
//
//  Created by Joshua Murray on 12/14/13.
//  Copyright (c) 2013 Joshua Murray. All rights reserved.
//

#import "ThinkTankClient.h"

@implementation ThinkTankClient

-(id) initWithConfiguration:(ThinkTankConfig *) config
{
    if (self = [super init]) {
        _configuration = config;
    }
    
    return self;
}

-(id) initWithConfigurationBlock:(ConfigurationBlock) block
{
    if (self = [super init]) {
        _configuration = [[ThinkTankConfig alloc] initWithBlock:block];
    }
    
    return self;
}

@end
