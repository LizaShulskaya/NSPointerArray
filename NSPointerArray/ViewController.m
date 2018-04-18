//
//  ViewController.m
//  NSPointerArray
//
//  Created by lizaveta shulskaya on 18.04.2018.
//  Copyright © 2018 lizaveta shulskaya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Create pointer array and add 10 objects inside
    NSAutoreleasePool *myPool = [[NSAutoreleasePool alloc] init];
    NSPointerFunctionsOptions options = (NSPointerFunctionsOpaqueMemory | NSPointerFunctionsOpaquePersonality);
    NSPointerArray *pointerArray = [NSPointerArray pointerArrayWithOptions: options];
    for(int i = 0; i < 10; i++) {
        NSNumber *value = [NSNumber numberWithInt:i];
        [pointerArray addPointer: value];
    }
    
    // Check arrays count
    NSLog(@"%lu", [pointerArray count]);
    
    // Nil several objects, added to the array and check count once again
    [pointerArray replacePointerAtIndex:0 withPointer:nil];
    [pointerArray replacePointerAtIndex:5 withPointer:nil];
    
    NSLog(@"%lu", [pointerArray count]);
    [myPool release];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
