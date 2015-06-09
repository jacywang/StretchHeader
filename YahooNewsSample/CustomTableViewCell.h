//
//  CustomTableViewCell.h
//  YahooNewsSample
//
//  Created by JIAN WANG on 6/9/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "News.h"

@interface CustomTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *category;
@property (weak, nonatomic) IBOutlet UILabel *headline;

-(void)configure:(News *)news;

@end
