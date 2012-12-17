//
//  ViewController.h
//  CustomQueueExample
//
//  Created by Renu Punjabi on 11/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "dispatch/dispatch.h"

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *statusLabel;
- (IBAction)statusButtonClicked:(id)sender;

@end
