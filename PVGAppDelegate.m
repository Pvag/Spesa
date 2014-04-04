//
//  PVGAppDelegate.m
//  Spesa
//
//  Created by P_VaG on 03/04/14.
//  Copyright (c) 2014 P_VaG. All rights reserved.
//

#import "PVGAppDelegate.h"

@interface PVGAppDelegate ()

- (void)populateData;

@end

@implementation PVGAppDelegate

- (NSMutableArray *)data {
    if (_data == nil) {
        _data = [[NSMutableArray alloc] init];
    }
    return _data;
}

- (IBAction)deleteItem:(NSButton *)sender {
    NSInteger selRow = [self.table selectedRow];
    [self.data removeObjectAtIndex:selRow];
    
    [self.table reloadData];
}

- (void)populateData {
    [self.data addObject:@"Libro"];
    [self.data addObject:@"Computer"];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

# pragma mark NSTableViewDataSource

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    if (![self.data count]) {
        [self populateData];
    }
    return [self.data count];
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    return [self.data objectAtIndex:row];
}

# pragma mark NSTableViewDelegate

//- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {

//    NSTextField *textField = [tableView makeViewWithIdentifier:@"MyView" owner:self];
//    
//    if (textField == nil) {
//        textField = [[NSTextField alloc] initWithFrame:NSMakeRect(1, 1, 100, 1)];
//    }
//    
//    textField.stringValue = [self.data objectAtIndex:row];
//    
//    return textField;
    
//    NSTableCellView *tableCellView = [self.table makeViewWithIdentifier:@"MyView" owner:self];
//    
//    tableCellView.textField.stringValue = [self.data objectAtIndex:row];
//    
//    return tableCellView;
    
//}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender {
    return YES;
}

@end
