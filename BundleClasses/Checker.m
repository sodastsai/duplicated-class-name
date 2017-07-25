//
//  Checker.m
//  BundleClasses
//
//  Created by sodas on 7/25/17.
//  Copyright © 2017 sodastsai. All rights reserved.
//

#import "Checker.h"
#import "MyObject.h"

@implementation Checker

+ (BOOL)checkByName:(id)obj {
    return [NSStringFromClass([obj class]) isEqualToString:NSStringFromClass(MyObject.class)];
}

+ (BOOL)checkByClass:(id)obj {
    return [obj isKindOfClass:MyObject.class];
}

@end
