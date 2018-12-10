//
//  ViewController.m
//  Swizzle
//
//  Created by 景悦诚 on 2018/12/10.
//  Copyright © 2018 nanosparrow. All rights reserved.
//

#import "ViewController.h"
#import "ClassA.h"
#import "ClassB.h"
#import "SubClassA.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ClassB *b = ClassB.new;
    NSLog(@"call methodB");
    [b methodB];
    ClassA *a = ClassA.new;
    NSLog(@"call methodA");
    [a methodA];
//    NSLog(@"call a_methodA");
//    [a a_methodA];
    NSLog(@"call methodA");
    [a methodA];
    NSLog(@"call a_methodB");
    [a a_methodB];
    SubClassA *subA = SubClassA.new;
    NSLog(@"call suba_methodA");
    [subA suba_methodA];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
