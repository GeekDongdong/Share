    //
//  MyCollectionViewCell.m
//  Share
//
//  Created by JACK on 2017/8/2.
//  Copyright © 2017年 JACK. All rights reserved.
//

#import "MyCollectionViewCell.h"

@implementation MyCollectionViewCell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.imageView = [[UIImageView alloc]init];
        [self.contentView addSubview:_imageView];
        self.is = @YES;
    }
    
    return self;
}
- (void)layoutSubviews{
    [super layoutSubviews];
    self.imageView.frame = CGRectMake(0, 0, 123, 123);
}

@end
