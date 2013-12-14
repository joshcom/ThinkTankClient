//
//  ThinkTankConfigTests.m
//  ThinkTankClient
//
//  Created by Joshua Murray on 12/14/13.
//  Copyright (c) 2013 Joshua Murray. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ThinkTankConfig.h"

@interface ThinkTankConfigTests : XCTestCase
{
    ThinkTankConfig * config;
}

-(void) testConfigurationBlock;
-(void) testConfigurationDefaults;

@end

@implementation ThinkTankConfigTests

- (void)setUp
{
    [super setUp];
    config = [ThinkTankConfig new];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testConfigurationBlock
{
    ThinkTankConfig * test_config = [[ThinkTankConfig alloc] initWithBlock:^(ThinkTankConfig * c) {
            c.endpoint = @"http://www.google.com";
        }];

    XCTAssertEqualObjects(test_config.endpoint, @"http://www.google.com");
}

- (void)testConfigurationDefaults
{
    

    XCTAssertEqualObjects(config.endpoint, @"http://jbox");
}

@end
