//
//  COIAppDelegate.m
//  NSPopover Message Category
//
//  Created by Michael Robinson on 11/03/12.
//  Copyright (c) 2012 Code of Interest. All rights reserved.
//

#import "COIAppDelegate.h"
#import "NSPopover+Message.h"

@implementation COIAppDelegate

@synthesize name, inputName, window = _window, feedbackType;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification { 
    self.name = @"Michael Robinson";
}

- (IBAction)validate:(id)sender {

    NSString *title, *message;
    
    if (![self.name isEqualToString:self.inputName]) {
        title = @"That isn't it!";
        if (self.inputName) {
            message = [NSString stringWithFormat:@"\"%@\" isn't my name.\nTake a deep breath and try again.", self.inputName];            
        } else {
            message = @"<Bonk> Please don't play with my emotions like this.";
        }
    } else {
        title = @"<Applause> Great work!";
        message = [NSString stringWithFormat:@"\"%@\" is my name!\nYou've done enough for the day, time to relax.", self.inputName];        
    }
    
    
    switch (self.feedbackType) {
        case MODAL_ALERT_FEEDBACK: {
            NSAlert *alert = [[NSAlert alloc] init];
            [alert addButtonWithTitle:@"OK"];
            [alert setMessageText:title];
            [alert setInformativeText:message];
            [alert setAlertStyle:NSWarningAlertStyle];
            [alert runModal];            
            break;
        }
        
        case SHEET_ALERT_FEEDBACK: {
            NSAlert *alert = [[NSAlert alloc] init];
            [alert addButtonWithTitle:@"OK"];
            [alert setMessageText:title];
            [alert setInformativeText:message];
            [alert setAlertStyle:NSWarningAlertStyle];
            [alert beginSheetModalForWindow:self.window
                              modalDelegate:self
                             didEndSelector:nil
                                contextInfo:nil];
            break;
        }
        
        case POPOVER_FEEDBACK: {
            [NSPopover showRelativeToRect:[nameField frame]
                                   ofView:[nameField superview]
                            preferredEdge:NSMaxXEdge
                                   string:[NSString stringWithFormat:@"%@\n%@", title, message]
                                 maxWidth:250.0];
            break;
        }
    }

}

@end
