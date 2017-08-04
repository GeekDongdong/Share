//
//  VC_Two_Button.m
//  Share
//
//  Created by JACK on 2017/8/1.
//  Copyright © 2017年 JACK. All rights reserved.
//

#import "VC_Two_Button.h"
#import "VC_Two_Button_CollectionVIew.h"
@interface VC_Two_Button (){
    UILabel *tf;
    UIButton *key;
}
@end

@implementation VC_Two_Button

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:238.0/255 green:238.0/255 blue:238.0/255 alpha:1];
    
    UIButton *buttonPlus = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonPlus.frame = CGRectMake(10, 25, 30, 20);
    [buttonPlus setImage:[UIImage imageNamed:@"back_img"] forState:UIControlStateNormal];
    [buttonPlus addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    
    UIView *imageView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 375, 64)];
    imageView.backgroundColor = [UIColor colorWithRed:53.0/255 green:143.0/255 blue:203.0/255 alpha:1];
    [self.view addSubview:imageView];
    [imageView addSubview:buttonPlus];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(40, 0, 100, 20)];
    label.textColor = [UIColor whiteColor];
    label.text = @"上传";
    [buttonPlus addSubview:label];
    
    _buttonOne = [UIButton buttonWithType:UIButtonTypeCustom];
    _buttonOne.frame = CGRectMake(10, 79, 210, 130);
    _buttonOne.backgroundColor = [UIColor grayColor];
    [_buttonOne addTarget:self action:@selector(enter) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_buttonOne];
    
    UIImageView *imageViewOne = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"位置"]];
    imageViewOne.frame = CGRectMake(240, 122, 22, 20);
    [self.view addSubview:imageViewOne];
    
    UIButton *buttonTwo = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonTwo.frame = CGRectMake(265, 120, 80, 25);
    [buttonTwo setTitle:@"陕西省,西安市" forState:UIControlStateNormal];
    buttonTwo.titleLabel.font = [UIFont systemFontOfSize:11];
    buttonTwo.layer.borderColor=[UIColor whiteColor].CGColor;
    [buttonTwo setBackgroundImage:[UIImage imageNamed:@"background_main"] forState:UIControlStateNormal];
    buttonTwo.layer.cornerRadius=12;
    buttonTwo.layer.masksToBounds=YES;
    [buttonTwo.layer setBorderWidth:1.0];
    [self.view addSubview:buttonTwo];
   
    
    UIImageView *imageViewTwo = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"65464"]];
    imageViewTwo.frame = CGRectMake(0, 210, 375, 400);
    [self.view addSubview:imageViewTwo];
    
    
    key = [UIButton buttonWithType:UIButtonTypeCustom];
    key.frame = CGRectMake(340,160,20,20);
    key.backgroundColor = [UIColor clearColor];
    key.tag = 6;
//    [key setImage:[UIImage imageNamed:@"icon-红点24x24"] forState:UIControlStateNormal];
//    [key setImage:[UIImage imageNamed:@"icon-红点24x24"] forState:UIControlStateSelected];
    [key addTarget:self action:@selector(point) forControlEvents:UIControlEventTouchUpInside];
    
    tf = [[UILabel alloc]initWithFrame:CGRectMake(240, 160, 100, 20)];
    tf.text = @" 原创作品   ";
    tf.backgroundColor = [UIColor colorWithRed:213.0/255 green:211.0/255 blue:211.0/255 alpha:1];
    tf.layer.borderColor=[UIColor blackColor].CGColor;
    tf.layer.cornerRadius=5;
    tf.layer.masksToBounds=YES;
    [tf.layer setBorderWidth:1.0];
    [self.view addSubview:tf];
    UIImageView *imageV = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"5231"]];
    imageV.frame = CGRectMake(338,160,20,20);
    imageV.layer.borderColor=[UIColor blackColor].CGColor;
    imageV.layer.cornerRadius=5;
    imageV.layer.masksToBounds=YES;
    [imageV.layer setBorderWidth:1.0];
    [self.view addSubview:imageV];
    [self.view addSubview:key];

    
    
}
- (void)point{
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(240, 180, 80, 20)];
    [self.view addSubview:view];
    
    UIButton *buttonThree = [UIButton buttonWithType:UIButtonTypeCustom];
    [buttonThree setTitle:@"设计资料    " forState:UIControlStateNormal];
    [buttonThree setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [buttonThree setTitleColor:[UIColor blackColor] forState:UIControlStateSelected];
    buttonThree.backgroundColor = [UIColor colorWithRed:213.0/255 green:211.0/255 blue:211.0/255 alpha:1];
    buttonThree.frame = CGRectMake(240, 180, 100, 20);
    [self.view addSubview:buttonThree];
    buttonThree.tag = 9;
    [buttonThree addTarget:self action:@selector(buttonThree) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *buttonFour = [UIButton buttonWithType:UIButtonTypeCustom];
    [buttonFour setTitle:@"设计师观点" forState:UIControlStateNormal];
    [buttonFour setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [buttonFour setTitleColor:[UIColor blackColor] forState:UIControlStateSelected];
    buttonFour.backgroundColor = [UIColor colorWithRed:213.0/255 green:211.0/255 blue:211.0/255 alpha:1];
    buttonFour.frame = CGRectMake(240, 200, 100, 20);
    [self.view addSubview:buttonFour];
    buttonFour.tag = 8;
    [buttonFour addTarget:self action:@selector(buttonFour) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *buttonFive = [UIButton buttonWithType:UIButtonTypeCustom];
    [buttonFive setTitle:@"设计教程    " forState:UIControlStateNormal];
    [buttonFive setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [buttonFive setTitleColor:[UIColor blackColor] forState:UIControlStateSelected];
    buttonFive.tintColor = [UIColor blackColor];
    buttonFive.backgroundColor = [UIColor colorWithRed:213.0/255 green:211.0/255 blue:211.0/255 alpha:1];
    buttonFive.frame = CGRectMake(240, 220, 100, 20);
    [self.view addSubview:buttonFive];
    buttonFive.tag = 7;
    [buttonFive addTarget:self action:@selector(buttonFive) forControlEvents:UIControlEventTouchUpInside];
    
    
    for (UIView *subviews in [self.view subviews]) {
        if (subviews.tag == 6) {
            [subviews removeFromSuperview];
        }
    }
    UIButton *cancel = [UIButton buttonWithType:UIButtonTypeCustom];
    cancel.backgroundColor = [UIColor clearColor];
    cancel.frame = CGRectMake(340,160,20,20);
    [cancel addTarget:self action:@selector(delete) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:cancel];

}
- (void)buttonThree{
    tf.text = @"设计资料";
}
- (void)buttonFour{
    tf.text = @"设计师观点";
}
- (void)buttonFive{
    tf.text = @"设计教程";
}
- (void)delete{
    for (UIView *subviews in [self.view subviews]) {
        if (subviews.tag==9||subviews.tag==8||subviews.tag==7) {
            [subviews removeFromSuperview];
        }
    }
    [self.view addSubview:key];
}
- (void)enter{
    VC_Two_Button_CollectionVIew *vc = [[VC_Two_Button_CollectionVIew alloc]init];
    [vc returnText:^(NSString *showText) {
        [self.buttonOne setImage:[UIImage imageNamed:showText] forState:UIControlStateNormal];
    }];
     [self presentViewController:vc animated:YES completion:nil];
}
- (void)back{
    [self dismissViewControllerAnimated:NO completion:nil];
 
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
