//
//  ThinkTankClient.h
//  ThinkTankClient
//
//  Created by Joshua Murray on 12/14/13.
//  Copyright (c) 2013 Joshua Murray. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ThinkTankConfig.h"

@interface ThinkTankClient : NSObject

@property (readonly) ThinkTankConfig * configuration;

-(id) initWithConfiguration:(ThinkTankConfig *) config;
-(id) initWithConfigurationBlock:(ConfigurationBlock) block;

@end
