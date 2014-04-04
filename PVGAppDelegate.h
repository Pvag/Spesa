//
//  PVGAppDelegate.h
//  Spesa
//
//  Created by P_VaG on 03/04/14.
//  Copyright (c) 2014 P_VaG. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface PVGAppDelegate : NSObject <NSApplicationDelegate, NSTableViewDataSource>

@property (assign) IBOutlet NSWindow *window;
@property (strong,nonatomic) IBOutlet NSTableView *table;

@property (strong,nonatomic) NSMutableArray *data;

- (IBAction)deleteItem:(NSButton *)sender;

@end
