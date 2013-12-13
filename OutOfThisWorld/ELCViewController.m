//
//  ELCViewController.m
//  OutOfThisWorld
//
//  Created by Eliza Cooper on 10/23/13.
//  Copyright (c) 2013 Eliza Cooper. All rights reserved.
//

#import "ELCViewController.h"
#import "AstronomicalData.h"

@interface ELCViewController ()

@end

@implementation ELCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	self.planets = [[NSMutableArray alloc] init];
	for (NSMutableDictionary *planetData in [AstronomicalData allKnownPlanets])
	{
		// parse the image name from the planetData dictionary
		NSString *imageName = [NSString stringWithFormat:@"%@.jpg", planetData[PLANET_NAME]];
		// initialize OWSpaceObject with data and image using custom initializer
		OWSpaceObject *planet = [[OWSpaceObject initWithData:planetData andImage:[UIImage imageNamed: imageName]];
								 [self.planets addObject:planet];
}
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
