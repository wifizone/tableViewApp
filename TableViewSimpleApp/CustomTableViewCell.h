//
//  CustomTableViewCell.h
//  TableViewSimpleApp
//
//  Created by Антон Полуянов on 17/12/2017.
//  Copyright © 2017 Антон Полуянов. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell

@property (nonatomic, strong) UILabel *labelName;
@property (nonatomic, strong) UILabel *labelDescription;
@property (nonatomic, strong) UILabel *labelDate;
@property (nonatomic, strong) UIImageView *myImageView;


@end
