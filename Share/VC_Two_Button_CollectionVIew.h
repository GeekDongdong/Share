//
//  VC_Two_Button_CollectionVIew.h
//  Share
//
//  Created by JACK on 2017/8/2.
//  Copyright © 2017年 JACK. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^ReturnTextBlock)(NSString *showText);

@interface VC_Two_Button_CollectionVIew : UIViewController
@property (nonatomic,copy) ReturnTextBlock returnTextBlock;

- (void)returnText:(ReturnTextBlock)block;
@end
