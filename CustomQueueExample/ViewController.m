//
//  ViewController.m
//  CustomQueueExample
//
//  Created by Renu Punjabi on 11/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    dispatch_queue_t customQueue;
}

@end

@implementation ViewController
@synthesize statusLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    customQueue = dispatch_queue_create("com.renupunjabi.customQueueExample", NULL);
}

- (void)viewDidUnload
{
    [self setStatusLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)statusButtonClicked:(id)sender {
    dispatch_async(customQueue, ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            statusLabel.text = @"Sleeping";
        });
        [self sleepingPlace];
    });
    }

-(void)sleepingPlace {
    sleep(5);
    dispatch_async(dispatch_get_main_queue(), ^{
        statusLabel.text = @"Awake"; 
    });

}
@end
