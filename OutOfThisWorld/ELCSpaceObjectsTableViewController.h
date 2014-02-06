//
//  ELCSpaceObjectsTableViewController.h
//  OutOfThisWorld
//
//  Created by Eliza Cooper on 10/25/13.
//  Copyright (c) 2013 Eliza Cooper. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OWSpaceObject.h"

@interface ELCSpaceObjectsTableViewController : UITableViewController
@property (strong, nonatomic) NSMutableArray *planets;
@property (strong, nonatomic) NSObject *OWSpaceObject;
@property (strong, nonatomic) NSMutableArray *addedSpaceObjects;

@end

[UITableView setBackgroundView:nil];