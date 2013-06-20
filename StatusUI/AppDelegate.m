//
//  AppDelegate.m
//  StatusUI
//
//  Created by Philipp Haussleiter on 16.06.13.
//  Copyright (c) 2013 Philipp Haußleiter. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)dealloc {
    [statusImage release];
    [statusHighlightImage release];
    [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

- (void) awakeFromNib {
    count = 0;
    statusItem = [[[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength] retain];
    
    NSBundle *bundle = [NSBundle mainBundle];
    statusImage = [[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:@"icon" ofType:@"png"]];
    statusHighlightImage = [[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:@"icon-high" ofType:@"png"]];
    [statusItem setImage:statusImage];
    [statusItem setTitle:[NSString stringWithFormat:@"M %li", (long)count]];
    [statusItem setAlternateImage:statusHighlightImage];
    [statusItem setMenu:statusMenu];
    [statusItem setToolTip:[NSString stringWithFormat:@"M %li", (long)count]];
    [statusItem setHighlightMode:YES];
    
}

- (IBAction)doSomething:(id)sender{
    count++;
    [statusItem setTitle:[NSString stringWithFormat:@"M %li", (long)count]];
    [statusItem setToolTip:[NSString stringWithFormat:@"M %li", (long)count]];
    NSLog(@"did something!");
}

@end
