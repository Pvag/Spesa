//
//  PVGTableViewController.h
//  Spesa
//
//  Created by P_VaG on 04/04/14.
//  Copyright (c) 2014 P_VaG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PVGTableViewController : NSObject <NSTableViewDataSource>

@property (strong, nonatomic) NSMutableArray *items;
@property (weak) IBOutlet NSTableView *table;

- (IBAction)deleteItem:(NSButton *)sender;

@end
