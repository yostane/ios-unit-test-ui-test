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
    XCUIElement *textField = [[app.otherElements containingType:XCUIElementTypeButton identifier:@"Set Label text to \"hello\""] childrenMatchingType:XCUIElementTypeTextField].element;
    [app.buttons[@"Set Label text to \"hello\""] tap];
    
       XCTAssertTrue([(NSString *)textField.value isEqualToString:@"hello"]);
}

-(void)testWorldFail
{
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app.buttons[@"Set Label text to \"World\""] tap];
    
    XCUIElement *textField = [[app.otherElements containingType:XCUIElementTypeButton identifier:@"Set Label text to \"hello\""] childrenMatchingType:XCUIElementTypeTextField].element;
    
    XCTAssertTrue([(NSString *)textField.value isEqualToString:@"blabla"]);
    
}

@end