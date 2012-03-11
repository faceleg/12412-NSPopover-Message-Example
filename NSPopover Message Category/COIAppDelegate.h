//
//  COIAppDelegate.h
//  NSPopover Message Category
//
//  Created by Michael Robinson on 11/03/12.
//  Copyright (c) 2012 Code of Interest. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface COIAppDelegate : NSObject <NSApplicationDelegate> {

    IBOutlet NSTextField *nameField;
    
    int feedbackType;
    NSString *name;
    NSString *inputName;
}

@property (assign, nonatomic) int feedbackType;
@property (retain) NSString *name;
@property (retain) NSString *inputName;
@property (assign) IBOutlet NSWindow *window;

- (IBAction)validate:(id)sender;

@end
