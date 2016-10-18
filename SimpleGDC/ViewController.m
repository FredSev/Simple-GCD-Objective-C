//  ViewController.m
//  SimpleGDC
//
//  Created by admin on 5/2/16.
//  Copyright © 2016 admin. All rights reserved.


#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Async GCD dispatch - Priority Background
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
        
    });
    
    // Sync GCD dispatch - Priority Background
    dispatch_sync(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
        
    });
    
    // Async GCD dispatch with secondary dispatch to Main Queue
    // Good for loading images and having the main queue update the UI
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
        });
    });
    
    //DISPATCH_QUEUE_PRIORITY_HIGH
    //DISPATCH_QUEUE_PRIORITY_LOW
    //DISPATCH_QUEUE_PRIORITY_DEFAULT
}


@end
