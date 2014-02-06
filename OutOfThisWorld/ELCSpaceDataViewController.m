//
//  ELCSpaceDataViewController.m
//  OutOfThisWorld
//
//  Created by Eliza Cooper on 2/4/14.
//  Copyright (c) 2014 Eliza Cooper. All rights reserved.
//

#import "ELCSpaceDataViewController.h"

@interface ELCSpaceDataViewController ()

@end

@implementation ELCSpaceDataViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
	
	UITableView *tableView = [[UITableView alloc] initWithFrame:frame];
	[tableView addTarget:self action:@selector];
	
	self.view.backgroundColor = [UIColor blackColor];
	self.tableView.backgroundColor = [UIColor clearColor];
	
	/* Set the TableView's delegate and datasource properties. This will allow the OWSpaceDataViewController to recieve messages from the UITableViewDelegate and UITableViewDataSource */
	self.tableView.delegate = self;
	self.tableView.dataSource = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource

/* Implement the method cellForRowAtIndexPath to determine what UITableViewCell objects our TableView should display. First create a cell identifier. Although we haven't covered the static keyword in depth it is useful when generating a string we want to be consistent for all cells. This cell identifier must be equal to the identifier for the prototype cell in the TableView. Create a UITableViewCell object. Use the method dequeueReusableCellWithIdentifier to reuse a cell after we create it the first time to save memory. Update the cell's textLabel to text.*/

-(UITableViewCell *)tableView:(UITableView *)tableView cellforRowAtIndexPath:(NSIndexPath *)indexPath
{
	static NSString *CellIdentifier = @"DataCell";
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];

	switch (indexPath.row)
	{
		case 0:
			cell.textLabel.text = @"Nickname :";
			cell.detailTextLabel.text = self.spaceObject.nickname;
			break;
		case 1:
			cell.textLabel.text = "Diameter (km):";
			cell.detailTextLabel.text = [NSString stringWithFormat:@"%f", self.spaceObject.diameter];
			break;
		case 2:
			cell.textLabel.text = @"Gravitational Force:";
			cell.detailTextLabel.text = [NSString stringWithFormat:@"%f", self.spaceObject.gravitationalForce];
			break;
		case 3:
			cell.textLabel.text = @"Length of a Year (days):";
			cell.detailTextLabel.text = [NSString stringWithFormat:@"%f", self.spaceObject.yearLength];
			break;
		case 4:
			cell.textLabel.text = @"Length of a Day (hours):";
			cell.detailTextLabel.text = [NSString stringWithFormat:@"%f", self.spaceObject.dayLength];
			break;
		case 5:
			cell.textLabel.text = @"Temperature (celsius):";
			cell.detailTextLabel.text = [NSString stringWithFormat:@"%f", self.spaceObject.temperature];
			break;
		case 6:
			cell.textLabel.text = @"Number of Moons:";
			cell.detailTextLabel.text = [NSString stringWithFormat:@"%i", self.spaceObject.numberOfMoons];
			break;
		case 7:
			cell.textLabel.text = @"Interesting Fact:";
			cell.detailTextLabel.text = self.spaceObject.interestFact;
			break;
		default:
			break;
}
	cell.backgroundColor = clearColor;
	return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger *)section
{
	return 8;
}

}

@end
