//
//  ELCTableViewCell.m
//  OutOfThisWorld
//
//  Created by Eliza Cooper on 1/2/14.
//  Copyright (c) 2014 Eliza Cooper. All rights reserved.
//

#import "ELCTableViewCell.h"

@implementation ELCTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
