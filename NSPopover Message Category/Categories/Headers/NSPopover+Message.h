//
//  NSPopover+Message.h
//  Requires NSString+Size, available at: https://github.com/faceleg/Cocoa-Categories
//
//  Created by Michael Robinson <mike@pagesofinterest.net> on 8/03/12.
//  Copyright (c) 2012 Code of Interest. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NSPopover (Message)

+ (void) showRelativeToRect:(NSRect)rect
                     ofView:(NSView *)view
              preferredEdge:(NSRectEdge)edge
                     string:(NSString *)string   
                   maxWidth:(float)width;

+ (void) showRelativeToRect:(NSRect)rect
                     ofView:(NSView *)view
              preferredEdge:(NSRectEdge)edge
                     string:(NSString *)string   
                   maxWidth:(float)width
                      color:(NSColor *)color
                       font:(NSFont *)font;
@end
