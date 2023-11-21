//
//  Mateusz_Klusek_SM_Zadanie_6UITestsLaunchTests.m
//  Mateusz_Klusek_SM_Zadanie_6UITests
//
//  Created by user251302 on 11/20/23.
//

#import <XCTest/XCTest.h>

@interface Mateusz_Klusek_SM_Zadanie_6UITestsLaunchTests : XCTestCase

@end

@implementation Mateusz_Klusek_SM_Zadanie_6UITestsLaunchTests

+ (BOOL)runsForEachTargetApplicationUIConfiguration {
    return YES;
}

- (void)setUp {
    self.continueAfterFailure = NO;
}

- (void)testLaunch {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app launch];

    // Insert steps here to perform after app launch but before taking a screenshot,
    // such as logging into a test account or navigating somewhere in the app

    XCTAttachment *attachment = [XCTAttachment attachmentWithScreenshot:XCUIScreen.mainScreen.screenshot];
    attachment.name = @"Launch Screen";
    attachment.lifetime = XCTAttachmentLifetimeKeepAlways;
    [self addAttachment:attachment];
}

@end
