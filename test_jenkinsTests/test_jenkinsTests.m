//
//  test_jenkinsTests.m
//  test_jenkinsTests
//
//  Created by Yassine Benabbas on 31/12/2015.
//  Copyright © 2015 awl. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface test_jenkinsTests : XCTestCase

@end

@implementation test_jenkinsTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExampleSuccess {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    XCTAssertTrue(YES);
}

- (void)testExampleFail {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    XCTAssertTrue(NO);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
