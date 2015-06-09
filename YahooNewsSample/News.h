//
//  News.h
//  YahooNewsSample
//
//  Created by JIAN WANG on 6/9/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface News : NSObject

@property (nonatomic, strong) NSString *category;
@property (nonatomic, strong) NSString *headline;

-(instancetype)initWithCategory:(NSString *)category andHeadline:(NSString *)headline;

@end
