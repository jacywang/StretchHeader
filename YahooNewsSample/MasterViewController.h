//
//  MasterViewController.h
//  YahooNewsSample
//
//  Created by JIAN WANG on 6/9/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MasterViewController : UITableViewController <UIScrollViewDelegate>

@property (weak, nonatomic) UIView *myHeaderView;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

@end

