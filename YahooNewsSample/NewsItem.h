//
//  News.h
//  YahooNewsSample
//
//  Created by JIAN WANG on 6/9/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NewsItem : NSObject

@property (nonatomic, strong) NSString *category;
@property (nonatomic, strong) NSString *headline;
@property (nonatomic, strong) UIColor *fontColorForCategory;

-(instancetype)initWithCategory:(NSInteger)categoryNum andHeadline:(NSString *)headline;

@end
