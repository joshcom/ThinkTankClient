//
//  ThinkTankClientTests.m
//  ThinkTankClientTests
//
//  Created by Joshua Murray on 12/14/13.
//  Copyright (c) 2013 Joshua Murray. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ThinkTankClient.h"

@interface ThinkTankClientTests : XCTestCase
{
    ThinkTankClient * client;
}
-(void) testInit;

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
    XCTAssertNotNil(client);
}

@end
