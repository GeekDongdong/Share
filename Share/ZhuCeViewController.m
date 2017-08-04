//
//  ZhuCeViewController.m
//  Share
//
//  Created by JACK on 2017/7/27.
//  Copyright © 2017年 JACK. All rights reserved.
//

#import "ZhuCeViewController.h" 
#import "ViewController.h"
@interface ZhuCeViewController (){
    UITextField *textFiledOne;
    UITextField *textFiledTwo;
    UITextField *textFiledThree;
}
extern NSString *account;
extern NSString *password;

@end

@implementation ZhuCeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor colorWithRed:53.0/255 green:143.0/255 blue:203.0/255 alpha:1];
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"login_logo"]];
    imageView.frame = CGRectMake(135, 90, 100, 100);
    [self.view addSubview:imageView];
    
    
    UILabel* label = [[UILabel alloc]init];
    label.font = [UIFont systemFontOfSize:33];
    label.text = @"SHARE";
    label.textColor = [UIColor whiteColor];
    label.frame = CGRectMake(135, 200, 150, 40);
    [self.view addSubview:label];
    
    textFiledOne = [[UITextField alloc]initWithFrame:CGRectMake(52, 290, 280, 45)];
    textFiledOne.backgroundColor = [UIColor whiteColor];
    textFiledOne.secureTextEntry=NO;
    UIImageView *imageViewTwo = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"123"]];
    textFiledOne.leftView=imageViewTwo;
    textFiledOne.leftViewMode=UITextFieldViewModeAlways;
    textFiledOne.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    textFiledOne.layer.borderColor=[UIColor whiteColor].CGColor;
    //自己加圆角
    textFiledOne.layer.cornerRadius=5;
    textFiledOne.layer.masksToBounds=YES;
    [self.view addSubview:textFiledOne];
    
    
    textFiledTwo = [[UITextField alloc]initWithFrame:CGRectMake(52, 345, 280, 45)];
    textFiledTwo.backgroundColor = [UIColor whiteColor];
    textFiledTwo.secureTextEntry=NO;
    imageViewTwo = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"133"]];
    textFiledTwo.leftView=imageViewTwo;
   textFiledTwo.leftViewMode=UITextFieldViewModeAlways;
    textFiledTwo.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    textFiledTwo.layer.borderColor=[UIColor whiteColor].CGColor;
    //自己加圆角
    textFiledTwo.layer.cornerRadius=5;
    textFiledTwo.layer.masksToBounds=YES;
    [self.view addSubview:textFiledTwo];
    
    
    textFiledThree = [[UITextField alloc]initWithFrame:CGRectMake(52, 400, 280, 45)];
    textFiledThree.backgroundColor = [UIColor whiteColor];
    textFiledThree.secureTextEntry=NO;
    imageViewTwo = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"1414"]];
    textFiledThree.leftView=imageViewTwo;
    textFiledThree.leftViewMode=UITextFieldViewModeAlways;
    textFiledThree.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    textFiledThree.layer.borderColor=[UIColor whiteColor].CGColor;
    //自己加圆角
    textFiledThree.layer.cornerRadius=5;
    textFiledThree.layer.masksToBounds=YES;
    [self.view addSubview:textFiledThree];

    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor clearColor];
    [button setTitle:@"确认注册" forState:UIControlStateNormal];
    button.frame = CGRectMake(115, 500, 150, 45);

    button.layer.borderColor = [UIColor whiteColor].CGColor;
    button.layer.cornerRadius = 5;
    [button addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    [button.layer setBorderWidth:1.0];
    [self.view addSubview:button];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)back{
    if([textFiledTwo.text isEqualToString:@""] || [textFiledThree.text isEqualToString:@""]){
        UIButton *error =[UIButton buttonWithType:UIButtonTypeCustom];
        [error setImage:[UIImage imageNamed:@"2389748"] forState:UIControlStateNormal];
        [error setImage:[UIImage imageNamed:@"2389748"] forState:UIControlStateSelected];
        error.tag = 1;
        error.frame = CGRectMake(30, 240, 315, 140);
        [error addTarget:self action:@selector(yes) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:error];
        [self addTimer];
        }else{
            account = textFiledTwo.text;
            password = textFiledThree.text;
            [self dismissViewControllerAnimated:YES completion:nil];
    }
    
}
-(void)returnText:(ReturnTextBlock)block{
    
    self.returnTextBlock = block;
    
}

//而这个时机就是当视图将要消失的时候，需要重写：

-(void)viewWillDisappear:(BOOL)animated{
    
    if (self.returnTextBlock !=nil) {
        self.returnTextBlock(textFiledTwo.text,textFiledThree.text);
    }
}
- (void)yes{
    for (UIView *subviews in [self.view subviews]) {
        if (subviews.tag==1) {
            [subviews removeFromSuperview];
        }
    }
    
}
- (void)addTimer
{
    NSTimer *timer = [NSTimer timerWithTimeInterval:1.0 target:self selector:@selector(yes) userInfo:nil repeats:NO];
    self.timer = timer;
    NSRunLoop *runLoop = [NSRunLoop currentRunLoop];
    [runLoop addTimer:timer forMode:NSRunLoopCommonModes];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
