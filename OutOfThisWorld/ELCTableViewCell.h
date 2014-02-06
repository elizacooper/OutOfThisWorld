//
//  ELCTableViewCell.h
//  OutOfThisWorld
//
//  Created by Eliza Cooper on 1/2/14.
//  Copyright (c) 2014 Eliza Cooper. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ELCTableViewCell : UITableViewCell

@property (strong, nonatomic) UITableViewCell *UITableViewCellStyleSubtitle;
@property (strong, nonatomic) UILabel *textLabel;
@property (strong, nonatomic) UILabel *detailTextLabel;
@property (strong, nonatomic) UIImageView *imageView;

@end

