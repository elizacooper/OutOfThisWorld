//
//  ELCSpaceObjectsTableViewController.m
//  OutOfThisWorld
//
//  Created by Eliza Cooper on 10/25/13.
//  Copyright (c) 2013 Eliza Cooper. All rights reserved.
//

#import "ELCSpaceObjectsTableViewController.h"
#import "OWSpaceObject.h"
#import "ELCSpaceImageViewController.h"
#import "ELCSpaceDataViewController.h"

@interface ELCSpaceObjectsTableViewController ()

@end

@implementation ELCSpaceObjectsTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

}

- (void)prepareForSegue(UIStoryboardSegue*)segue sender(id)sender
{
	if ([sender isKindOfclass:[UITableViewCell class]])
	{
		if ([segue.destinationViewController isKindOfClass:[ELCSpaceImageViewController class]])
		{
			ELCSpaceImageViewController *nextViewController = segue.destinationViewController;
			NSIndexPath *path = [self.tableView indexPathForCell:sender];
			OWSpaceObject *selectedObject = self.planets[path.row];
			nextViewController.spaceObject = selectedObject;
		}
	}
	
	/* The prepareForSegue method is called right before the viewController transition occurs. Notice that we do introspection to ensure that the Segue is being triggered by the proper sender. In this case we pass in the NSIndexPath of the accessory button pressed. We then confirm that the destination ViewController is the OWSpaceDataViewController. Finally, we create a variable named targetViewController that points to our destination ViewController. Determine the indexPath of the selected cell and use that indexPath to access a OWSpaceObject in our planet array. Finally set the property spaceobject of the variable targetViewController equal to the selected object. */
	if ([sender isKindOfClass:[NSIndexPath class]])
	{
		if ([segue.destinationViewController isKindOfClass:[ELCSpaceDataViewController class]])
		{
			ELCSpaceDataViewController *targetViewController = segue.destinationViewController;
			NSIndexPath *path = sender;
			OWSpaceObject *selectedObject = self.planets[path.row];
			targetViewController.spaceObject = selectedObject;
		}
	}
}

	- (void)tableView:(UITableView*) tableView didSelectRowAtIndexPath:(NSIndexPath*) indexPath
{
	ELCSpaceImageViewController *viewController = [[ELCSpaceImageViewController alloc] init];
	[self.navigationController pushViewController:viewController animated:YES];
}

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	if ([self.addedSpaceObjects count])
	{
		return 2;
	}
	else
	{
	return 1;
}
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	if (section == 1)
	{
		return [self.addedSpaceObjectsCount];
	}
	else
	{
    return [self.planets count];
	}
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
	// retrieve the OWSpaceObject from my array
	OWSpaceObject *planet =self.planets[indexPath.row];

    // Configure the cell...
	if (indexPath.section == 1)
		// use new space object to configure the cell
		{
		OWSpaceObject *planet = [self.addedSpaceObjects objectAtIndex:indexPath.row];
	}
	if (section == 0)
	{
		cell.backgroundColor = [UIColor redColor];
	}
	else
	{
		cell.backgroundColor = [UIColor blueColor];
	}

    cell.textLabel.text = planet.name;
	cell.detailTextLabel.text = planet.nickname;
	cell.imageView.image = planet.spaceImage;
	cell.backgroundColor = [UIColor clearColor];
	cell.textLabel.textColor = [UIColor whiteColor];
	cell.detailTextLabel.textColor = [UIColor colorWithWhite:0.5 alpha:1.0];
    return cell;
}

#pragma mark: UITableView Delegate

/* This method will be called when the user presses the accessory info button the TableViewCells. When the user presses the application should transition using the push segue named "push to space data". */
-(void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
{
	[self performSegueWithIdentifier:@"push to space data" sender:indexPath];
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
