//
//  ViewController.m
//  Share
//
//  Created by JACK on 2017/7/27.
//  Copyright © 2017年 JACK. All rights reserved.
//

#import "ViewController.h"
#import "ZhuCeViewController.h"
#import "ViewControllerOne.h"
#import "ViewControllerTwo.h"
#import "ViewControllerThree.h"
#import "ViewControllerFour.h"
#import "ViewControllerFive.h"
@interface ViewController (){
    UITextField *textFiledOne;
    UITextField *textFiledTwo;
}

@end

@implementation ViewController
 NSString *account;
NSString *password;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
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
    UIImageView *imageViewTwo = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"133"]];
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
    textFiledTwo.secureTextEntry=YES;
    imageViewTwo = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"1414"]];
    textFiledTwo.leftView=imageViewTwo;
    textFiledTwo.leftViewMode=UITextFieldViewModeAlways;
    textFiledTwo.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    textFiledTwo.layer.borderColor=[UIColor whiteColor].CGColor;
    //自己加圆角
    textFiledTwo.layer.cornerRadius=5;
    textFiledTwo.layer.masksToBounds=YES;
    [self.view addSubview:textFiledTwo];
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor clearColor];
    [button setTitle:@"登录" forState:UIControlStateNormal];
    button.frame = CGRectMake(85, 420, 100, 38);
    button.layer.borderColor = [UIColor whiteColor].CGColor;
    button.layer.cornerRadius = 5;
    [button addTarget:self action:@selector(enter) forControlEvents:UIControlEventTouchUpInside];
    [button.layer setBorderWidth:1.0];
    [self.view addSubview:button];
    
    
    UIButton *buttonTwo = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonTwo.backgroundColor = [UIColor clearColor];
    [buttonTwo setTitle:@"注册" forState:UIControlStateNormal];
    buttonTwo.frame = CGRectMake(215, 420, 100, 38);
    buttonTwo.layer.borderColor = [UIColor whiteColor].CGColor;
    buttonTwo.layer.cornerRadius = 5;
    [buttonTwo addTarget:self action:@selector(zhuCe) forControlEvents:UIControlEventTouchUpInside];
    [buttonTwo.layer setBorderWidth:1.0];
    [self.view addSubview:buttonTwo];
    
    UIButton *buttonThree = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonThree.frame = CGRectMake(30, 480, 150, 20);
    [buttonThree setTitle:@"自动登录" forState:UIControlStateNormal];
    [buttonThree setTitleColor:[UIColor blackColor] forState:UIControlStateSelected];
    [buttonThree setTitle:@"自动登录" forState:UIControlStateSelected];
    [buttonThree setImage:[UIImage imageNamed:@"37DF92A77FD578648E6DA38A0EBC12F9"] forState:UIControlStateNormal];
    [buttonThree setImage:[UIImage imageNamed:@"A1A0C33290AE345816E10EAB8BCFAE64"] forState:UIControlStateSelected];
    [buttonThree addTarget:self action:@selector(touch:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttonThree];
}

- (void)touch:(UIButton *)sender{
    sender.selected = !sender.selected;
}
- (void)zhuCe{
    ZhuCeViewController *vc = [[ZhuCeViewController alloc]init];
    [vc returnText:^(NSString *accountText,NSString *passwordText) {
        textFiledOne.text = accountText;
        textFiledTwo.text = passwordText;
    }];

    [self presentViewController:vc animated:YES completion:nil];
}
- (void)enter{
//       if ([textFiledOne.text isEqualToString:account]&&[textFiledTwo.text isEqualToString:password]) {

    UITabBarController *tb=[[UITabBarController alloc]init];
    
    
    ViewControllerOne *c1=[[ViewControllerOne alloc]init];
        c1.tabBarItem.image = [[UIImage imageNamed:@"1"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    c1.tabBarItem.selectedImage = [[UIImage imageNamed:@"34"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //c1.tabBarItem.badgeValue=@"1";
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:c1];
    
    ViewControllerTwo *c2=[[ViewControllerTwo alloc]init];
    c2.tabBarItem.image = [[UIImage imageNamed:@"2"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    c2.tabBarItem.selectedImage = [[UIImage imageNamed:@"34"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:c2];
    
    
    ViewControllerThree *c3=[[ViewControllerThree alloc]init];
    c3.tabBarItem.image = [[UIImage imageNamed:@"3"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    c3.tabBarItem.selectedImage = [[UIImage imageNamed:@"34"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UINavigationController *nav3 = [[UINavigationController alloc] initWithRootViewController:c3];
    
    
    ViewControllerFour *c4=[[ViewControllerFour alloc]init];
    c4.tabBarItem.image = [[UIImage imageNamed:@"4"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    c4.tabBarItem.selectedImage = [[UIImage imageNamed:@"34"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UINavigationController *nav4 = [[UINavigationController alloc] initWithRootViewController:c4];
    tb.viewControllers=@[nav1,nav2,nav3,nav4];
    
    ViewControllerFive *c5=[[ViewControllerFive alloc]init];
    c5.tabBarItem.image = [[UIImage imageNamed:@"5"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    c5.tabBarItem.selectedImage = [[UIImage imageNamed:@"34"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UINavigationController *nav5 = [[UINavigationController alloc] initWithRootViewController:c5];
    tb.viewControllers=@[nav1,nav2,nav3,nav4,nav5];

    
    [[UINavigationBar appearance]setBarTintColor: [UIColor colorWithRed:53.0/255 green:143.0/255 blue:203.0/255 alpha:1]];
    [[UITabBar appearance] setBarTintColor:[UIColor whiteColor]];
    [UITabBar appearance].translucent = NO;//取消tabBar的透明效果
    
    [self presentViewController:tb animated:YES completion:nil];
//    }else {
//        UIImageView *error = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"error"]];
//        error.frame = CGRectMake(30, 240, 315, 140);
//        [self.view addSubview:error];
//        [error setTag:15];
//        UIButton *buttonYes = [UIButton buttonWithType:UIButtonTypeCustom];
//        buttonYes.frame = CGRectMake(280, 350, 30, 15);
//        buttonYes .backgroundColor = [UIColor clearColor];
//        [buttonYes addTarget:self action:@selector(yes) forControlEvents:UIControlEventTouchUpInside];
//        [self.view addSubview:buttonYes];
//    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)yes{
    for (UIView *subviews in [self.view subviews]) {
        if (subviews.tag==15) {
            [subviews removeFromSuperview];
        }
    }
    textFiledOne.text = nil;
    textFiledTwo.text = nil;
}

@end
