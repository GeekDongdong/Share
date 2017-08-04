//
//  ZhuCeViewController.h
//  Share
//
//  Created by JACK on 2017/7/27.
//  Copyright © 2017年 JACK. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^ReturnTextBlock)(NSString *accountText,NSString *passwordText);
@interface ZhuCeViewController : UIViewController
@property (nonatomic,copy) ReturnTextBlock returnTextBlock;//定义的一个Block属性
@property(nonatomic,strong)NSTimer *timer;
- (void)returnText:(ReturnTextBlock)block;

@end
