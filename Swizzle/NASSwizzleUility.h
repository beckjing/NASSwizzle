//
//  NASSwizzleUility.h
//  Swizzle
//
//  Created by 景悦诚 on 2018/12/10.
//  Copyright © 2018 nanosparrow. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NASSwizzleUility : NSObject

+ (BOOL)swizzleInstanceMethodOriginalClass:(Class)originalClass
                          originalSelector:(SEL)originalSelector
                                  newClass:(Class)newClass
                               newSelector:(SEL)newSelector;

@end
