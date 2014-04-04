//
//  PVGTableViewController.m
//  Spesa
//
//  Created by P_VaG on 04/04/14.
//  Copyright (c) 2014 P_VaG. All rights reserved.
//

#import "PVGTableViewController.h"
#import "PVGItem.h"

@implementation PVGTableViewController

// Lazy instantiation for the array items
- (NSMutableArray *)items {
    if (_items == nil) {
        _items = [[NSMutableArray alloc] init];
    }
    return _items;
}

// Initialize the content here and put it into
// the items array
-(id)init {
    if (self = [super init]) {
        NSString *item1Name = @"Spaghetti";
        int item1Quantity = 3;
        PVGItem *item1 = [[PVGItem alloc] init];
        item1.itemName = item1Name;
        item1.quantity = item1Quantity;
        [self.items addObject:item1];
        
        NSString *item2Name = @"Mele";
        int item2Quantity = 4;
        PVGItem *item2 = [[PVGItem alloc] init];
        item2.itemName = item2Name;
        item2.quantity = item2Quantity;
        [self.items addObject:item2];
    }
    return self;
}

- (IBAction)deleteItem:(NSButton *)sender {
    [self.items removeObjectAtIndex:[self.table selectedRow]];
    [self.table reloadData];
}

# pragma mark Data Source methods

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return [self.items count];
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    
    PVGItem *item = [self.items objectAtIndex:row];
    
    return [item valueForKey:tableColumn.identifier];
}
@end
