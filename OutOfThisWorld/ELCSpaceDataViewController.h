//
//  ELCSpaceDataViewController.h
//  OutOfThisWorld
//
//  Created by Eliza Cooper on 2/4/14.
//  Copyright (c) 2014 Eliza Cooper. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ELCSpaceObjectsTableViewController.h"
#import "OWSpaceObject.h"

@interface ELCSpaceDataViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) OWSpaceObject *spaceObject;

@end
