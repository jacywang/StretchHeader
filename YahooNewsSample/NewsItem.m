//
//  News.m
//  YahooNewsSample
//
//  Created by JIAN WANG on 6/9/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "NewsItem.h"

@implementation NewsItem

-(instancetype)initWithCategory:(NSInteger)categoryNum andHeadline:(NSString *)headline {
    self = [super init];
    if (self) {
        _headline = headline;
        
        switch (categoryNum) {
            case 0:
                _category = @"World";
                _fontColorForCategory = [UIColor greenColor];
                break;
            case 1:
                _category = @"Americas";
                _fontColorForCategory = [UIColor blueColor];
                break;
            case 2:
                _category = @"Europe";
                _fontColorForCategory = [UIColor purpleColor];
                break;
            case 3:
                _category = @"Middle East";
                _fontColorForCategory = [UIColor brownColor];
                break;
            case 4:
                _category = @"Africa";
                _fontColorForCategory = [UIColor lightGrayColor];
                break;
            case 5:
                _category = @"Asia Pacific";
                _fontColorForCategory = [UIColor orangeColor];
                break;
            default:
                break;
        }
    }
    return self;
}

@end
