//
//  ELCSpaceImageViewController.m
//  OutOfThisWorld
//
//  Created by Eliza Cooper on 1/16/14.
//  Copyright (c) 2014 Eliza Cooper. All rights reserved.
//

#import "ELCSpaceImageViewController.h"

@interface ELCSpaceImageViewController ()

@end

@implementation ELCSpaceImageViewController

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

	self.imageView = [[UIImageView alloc] initWithImage:self.spaceObject.spaceImage];

	UIScrollView *myScrollView = [[UIScrollView alloc] init];

	self.scrollView.contentSize = self.imageView.frame.size;
	[self.scrollView addSubview:imageView];

	/* Set the scrollview's delegate property to self. This will allow the OWSpaceImageViewController to recieve messages from the UIScrollViewDelegate */
	self.scrollView.delegate = self;

	/* Set the maximum and minimum zoom scales to be different so that the user will be able to zoom in and out of the imageView. These repersent the maximum minimum scale factors when we zoom. */
	self.scrollView.maximumZoomScale = 2.0;
	self.scrollView.minimumZoomScale = 0.5;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

	/* Implement the UIScrollView delegate method so that the UIScrollView delegate will know which view on its' scrollview to zoom into and out of. */
-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
	return self.imageView;
}

@end
