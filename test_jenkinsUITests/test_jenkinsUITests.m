//
//  test_jenkinsUITests.m
//  test_jenkinsUITests
//
//  Created by Yassine Benabbas on 31/12/2015.
//  Copyright © 2015 awl. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface test_jenkinsUITests : XCTestCase

@end

@implementation test_jenkinsUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testHello {
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    XCUIElement *textField = app.textFields[@"input"];

    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"value = %@", @"hello"];
    
    [self expectationForPredicate:predicate evaluatedWithObject:textField handler:nil];
    
    [app.buttons[@"helloButton"] tap];
    
    XCUIElement *hellobuttonButton = [[XCUIApplication alloc] init].buttons[@"helloButton"];
    [hellobuttonButton tap];
    [hellobuttonButton tap];
    [hellobuttonButton tap];
    
    
    [self waitForExpectationsWithTimeout:10 handler:nil];
}

@end
