//
//  ThinkTankRequest.m
//  ThinkTankClient
//
//  Created by Joshua Murray on 12/14/13.
//  Copyright (c) 2013 Joshua Murray. All rights reserved.
//

#import "ThinkTankRequest.h"

@implementation ThinkTankRequest

-(id) init
{
    if (self = [super init]) {
        configuration = [[ThinkTankConfig alloc] init];
    }
    
    return self;
}

-(id) initWithConfiguration:(ThinkTankConfig *) config
{
    if (self = [super init]) {
        configuration = config;
    }
    
    return self;
}

-(NSString*)buildRequestUri:(NSString*)path
{
    NSString * host = configuration.endpoint;
    NSMutableString * finalHost;
    NSMutableString * finalPath;
    
    if ([host hasSuffix:@"/"] == NO) {
        finalHost = [NSMutableString stringWithFormat:@"%@/", host];
    }
    else {
        finalHost = [host copy];
    }
        
    if ([path hasPrefix:@"/"] == YES) {
        finalPath = (NSMutableString*)[path substringFromIndex:1];
    }
    else {
        finalPath = [path copy];
    }
    
    
    NSString * finalUri = [NSString stringWithFormat:@"%@%@", finalHost, finalPath];
    
    return finalUri;
}

@end
