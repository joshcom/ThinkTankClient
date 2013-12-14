//
//  ThinkTankRequestTests.m
//  ThinkTankClient
//
//  Created by Joshua Murray on 12/14/13.
//  Copyright (c) 2013 Joshua Murray. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ThinkTankRequest.h"
#import "ThinkTankConfig.h"

@interface ThinkTankRequestTests : XCTestCase
{
    ThinkTankConfig * configuration;
    ThinkTankRequest * request;
}
@end

@implementation ThinkTankRequestTests

- (void)setUp
{
    [super setUp];
    
    configuration = [[ThinkTankConfig alloc] initWithBlock:^(ThinkTankConfig * c) {
            c.endpoint = @"http://www.thinktank.com/";
        }];
    
    request = [[ThinkTankRequest alloc] initWithConfiguration:configuration];
}

- (void)tearDown
{
    [super tearDown];
}

-(void)testInit
{
    // If we initialize without a configuration, we just
    // load the defaults.
    ThinkTankRequest * req = [ThinkTankRequest new];
    XCTAssertNotNil(req);
}

-(void)testInitWithConfiguration
{
    XCTAssertNotNil(request);
}

-(void)testBuildRequestUriForPath
{
    NSString * expectedUri = @"http://www.thinktank.com/ideas";
    NSString * finalUri;
    
    // Easy mode
    finalUri =  [request buildRequestUri:@"ideas"];
    XCTAssertEqualObjects(finalUri, expectedUri, @"Trouble formatting URI with easiest scenario.");
    
    // Both path and host start/end with "/"
    finalUri =  [request buildRequestUri:@"/ideas"];
    XCTAssertEqualObjects(finalUri, expectedUri, @"Trouble formatting URI when path starts with /");
    
    ThinkTankConfig * uri_config = [[ThinkTankConfig alloc] initWithBlock:^(ThinkTankConfig * c) {
        c.endpoint = @"http://www.thinktank.com";
    }];
    
    ThinkTankRequest * uri_request = [[ThinkTankRequest alloc] initWithConfiguration:uri_config];
    
    // Host doesn't end with "/", but path starts with it.
    finalUri =  [uri_request buildRequestUri:@"/ideas"];
    XCTAssertEqualObjects(finalUri, expectedUri, @"Trouble formatting URI when path starts with /");
    
    // Neither has "/"
    finalUri =  [uri_request buildRequestUri:@"ideas"];
    XCTAssertEqualObjects(finalUri, expectedUri, @"Trouble formatting URI when / missing from both host and path.");
}


@end
