//
//  NASSwizzleUility.m
//  Swizzle
//
//  Created by 景悦诚 on 2018/12/10.
//  Copyright © 2018 nanosparrow. All rights reserved.
//

#import "NASSwizzleUility.h"
#import "ClassA.h"
#import "ClassB.h"
#import "SubClassA.h"
#import <objc/runtime.h>

@implementation NASSwizzleUility

+ (BOOL)swizzleInstanceMethodOriginalClass:(Class)originalClass
                          originalSelector:(SEL)originalSelector
                                  newClass:(Class)newClass
                               newSelector:(SEL)newSelector {
    Method originalMethod = class_getInstanceMethod(originalClass, originalSelector);
    if (!originalMethod) {
        return NO;
    }
    
    Method newMethod = class_getInstanceMethod(newClass, newSelector);
    if (!newMethod) {
        return NO;
    }
    
    Method originalNewMethod = class_getInstanceMethod(originalClass, newSelector);
   
    if (originalNewMethod == nil) {
        BOOL addOriginalNewMethod = class_addMethod(originalClass,
                                                    newSelector,
                                                    method_getImplementation(originalMethod),
                                                    method_getTypeEncoding(originalMethod));
        if (addOriginalNewMethod == NO) {
            return NO;
        }
    }
    
    method_exchangeImplementations(originalMethod, newMethod);
    return YES;
}

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
//        [self swizzleInstanceMethodOriginalClass:ClassA.class
//                                originalSelector:@selector(methodA)
//                                        newClass:ClassA.class
//                                     newSelector:@selector(a_methodA)];
        [self swizzleInstanceMethodOriginalClass:ClassB.class
                                originalSelector:@selector(methodB)
                                        newClass:ClassA.class
                                     newSelector:@selector(a_methodB)];
        [self swizzleInstanceMethodOriginalClass:ClassA.class
                                originalSelector:@selector(methodA)
                                        newClass:SubClassA.class
                                     newSelector:@selector(suba_methodA)];
    });
}

@end
