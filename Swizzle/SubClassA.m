//
//  SubClassA.m
//  Swizzle
//
//  Created by 景悦诚 on 2018/12/11.
//  Copyright © 2018 nanosparrow. All rights reserved.
//

#import "SubClassA.h"

@implementation SubClassA

- (void)methodSubA {
    NSLog(@"methodSubA");
}

- (void)suba_methodA {
    NSLog(@"suba_methodA");
    [self suba_methodA];
}

@end
