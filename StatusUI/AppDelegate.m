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
    statusItem = [[[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength] retain];
    
    NSBundle *bundle = [NSBundle mainBundle];
    statusImage = [[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:@"icon" ofType:@"png"]];
    statusHighlightImage = [[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:@"icon-high" ofType:@"png"]];
    [statusItem setImage:statusImage];
    [statusItem setTitle:@"2323"];
    [statusItem setAlternateImage:statusHighlightImage];
    [statusItem setMenu:statusMenu];
    [statusItem setToolTip:@"innoQ Status"];
    [statusItem setHighlightMode:YES];
    
}

- (IBAction)doSomething:(id)sender{
    NSLog(@"did something!");
}

@end
