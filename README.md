Example project showing usage of the NSPopover+Message category.

```ObjectiveC
[NSPopover showRelativeToRect:[theInput frame]
                       ofView:[theInput superview]
                preferredEdge:NSMaxXEdge  // Show the popover on the right edge
                       string:@"Once upon a time, in a land far, far away, there was a little cake. It didn't last long."
                     maxWidth:250.0];
```

As described here: [User Feedback & Simplifying the NSPopover](http://12412.org/?p=304 "User Feedback & Simplifying the NSPopover").
