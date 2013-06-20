//
//  AppDelegate.h
//  StatusUI
//
//  Created by Philipp Haussleiter on 16.06.13.
//  Copyright (c) 2013 Philipp Haußleiter. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    IBOutlet NSMenu *statusMenu;
    NSStatusItem *statusItem;
    NSImage *statusImage;
    NSImage *statusHighlightImage;
    NSInteger count;
}

- (IBAction)doSomething:(id)sender;

@property (assign) IBOutlet NSWindow *window;

@end
