//
//  ThinkTankClientTests.m
//  ThinkTankClientTests
//
//  Created by Joshua Murray on 12/14/13.
//  Copyright (c) 2013 Joshua Murray. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ThinkTankClient.h"
#import "ThinkTankConfig.h"

@interface ThinkTankClientTests : XCTestCase
{
    ThinkTankClient * client;
}

-(void) testInit;
-(void) testInitWithConfiguration;
-(void) testInitWithConfigurationBlock;

@end

@implementation ThinkTankClientTests

- (void)setUp
{
    [super setUp];

    client = [ThinkTankClient new];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testInit
{
    XCTFail(@"Fail!");
    XCTAssertNotNil(client);
}

-(void)testInitWithConfiguration
{
    ThinkTankConfig * block_config = [[ThinkTankConfig alloc] initWithBlock:^(ThinkTankConfig * c) {
        c.endpoint = @"http://www.yahoo.com";
    }];
    
    ThinkTankClient * block_client = [[ThinkTankClient alloc] initWithConfiguration: block_config];
    
    XCTAssertEqualObjects(block_client.configuration.endpoint, @"http://www.yahoo.com");
}

-(void) testInitWithConfigurationBlock
{
    ThinkTankClient * block_client = [[ThinkTankClient alloc] initWithConfigurationBlock:^(ThinkTankConfig * c) {
        c.endpoint = @"http://www.google.com";
    }];
    
    XCTAssertEqualObjects(block_client.configuration.endpoint, @"http://www.google.com");
}
@end
