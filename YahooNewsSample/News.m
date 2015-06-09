//
//  News.m
//  YahooNewsSample
//
//  Created by JIAN WANG on 6/9/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "News.h"

@implementation News

-(instancetype)initWithCategory:(NSString *)category andHeadline:(NSString *)headline {
    self = [super init];
    if (self) {
        _category = category;
        _headline = headline;
    }
    return self;
}

@end
