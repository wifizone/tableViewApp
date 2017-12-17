//
//  CustomTableViewCell.m
//  TableViewSimpleApp
//
//  Created by Антон Полуянов on 17/12/2017.
//  Copyright © 2017 Антон Полуянов. All rights reserved.
//

#import "CustomTableViewCell.h"

static int offset = 15;
static int imageWidth = 50;


@implementation CustomTableViewCell

-(void)layoutSubviews
{
    [super layoutSubviews];
    self.myImageView.frame = CGRectMake(offset, offset, imageWidth, imageWidth);
    self.labelName.frame = CGRectMake(75, offset, 20, 110);
    self.labelDescription.frame = CGRectMake(75, offset+40, 20, 110);
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        _myImageView = [UIImageView new];
        _labelName = [UILabel new];
        _labelDescription = [UILabel new];
        _labelDate = [UILabel new];
        
        [self.contentView addSubview:_labelName];
        [self.contentView addSubview:_labelDescription];
        [self.contentView addSubview:_labelDate];
        [self.contentView addSubview:_myImageView];
    }
    
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}



@end
