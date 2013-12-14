//
//  ThinkTankConfig.h
//  ThinkTankClient
//
//  Created by Joshua Murray on 12/14/13.
//  Copyright (c) 2013 Joshua Murray. All rights reserved.
//

#import <Foundation/Foundation.h>

#define DEFAULT_ENDPOINT @"http://jbox"

typedef void (^ConfigurationBlock)(id);

@interface ThinkTankConfig : NSObject

@property NSString* endpoint;

-(id)initWithBlock:(ConfigurationBlock)block;

@end
