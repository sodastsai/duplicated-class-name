//
//  BundleClassesTests.m
//  BundleClassesTests
//
//  Created by sodas on 7/25/17.
//  Copyright © 2017 sodastsai. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Checker.h"
#import "MyObject.h"

@interface BundleClassesTests : XCTestCase

@end

@implementation BundleClassesTests

- (void)testExample1 {
    NSBundle *appBundle = [NSBundle bundleWithIdentifier:@"tw.sodas.BundleClasses"];
    NSBundle *testBundle = [NSBundle bundleForClass:self.class];
    NSBundle *mainBundle = NSBundle.mainBundle;
    XCTAssertFalse([appBundle isEqual:testBundle]);
    XCTAssertTrue([appBundle isEqual:mainBundle]);
}

- (void)testExample2 {
    MyObject *obj = [[MyObject alloc] init];
    NSBundle *appBundle = [NSBundle bundleWithIdentifier:@"tw.sodas.BundleClasses"];
    NSBundle *testBundle = [NSBundle bundleForClass:self.class];
    XCTAssertEqualObjects([NSBundle bundleForClass:obj.class], testBundle);
    XCTAssertNotEqualObjects([NSBundle bundleForClass:obj.class], appBundle);
    XCTAssertFalse([Checker checkByClass:obj]);
    XCTAssertTrue([Checker checkByName:obj]);
}

@end
