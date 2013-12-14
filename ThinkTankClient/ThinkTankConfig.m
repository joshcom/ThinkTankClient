//
//  ThinkTankConfig.m
//  ThinkTankClient
//
//  Created by Joshua Murray on 12/14/13.
//  Copyright (c) 2013 Joshua Murray. All rights reserved.
//

#import "ThinkTankConfig.h"

@implementation ThinkTankConfig

-(id) init
{
    if (self = [super init]) {
        self.endpoint = DEFAULT_ENDPOINT;
    }
    
    return self;
}

-(id)initWithBlock:(ConfigurationBlock)block
{
    if (self = [super init]) {
        block(self);
    }

    return self;
}

@end
