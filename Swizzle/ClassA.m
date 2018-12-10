//
//  ClassA.m
//  Swizzle
//
//  Created by 景悦诚 on 2018/12/10.
//  Copyright © 2018 nanosparrow. All rights reserved.
//

#import "ClassA.h"

@implementation ClassA

- (void)methodA {
    NSLog(@"methodA");
}

- (void)a_methodB {
    NSLog(@"a_methodB");
    [self a_methodB];
}

- (void)a_methodA {
    NSLog(@"a_methodA");
    [self a_methodA];
}

@end
