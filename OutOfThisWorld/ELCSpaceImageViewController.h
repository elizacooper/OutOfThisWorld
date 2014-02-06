//
//  ELCSpaceImageViewController.h
//  OutOfThisWorld
//
//  Created by Eliza Cooper on 1/16/14.
//  Copyright (c) 2014 Eliza Cooper. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ELCSpaceImageViewController : UIViewController <UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) UIImageView *imageView;

@end
