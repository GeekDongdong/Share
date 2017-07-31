//
//  ViewControllerTwo.m
//  Share
//
//  Created by JACK on 2017/7/27.
//  Copyright © 2017年 JACK. All rights reserved.
//

#import "ViewControllerTwo.h"

@interface ViewControllerTwo (){
    UIButton *button;
}

@end

@implementation ViewControllerTwo

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.view.backgroundColor = [UIColor colorWithRed:238.0/255 green:238.0/255 blue:238.0/255 alpha:1];
    
    UILabel *lable = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 50, 133)];
    lable.text = @"搜索";
    lable.textColor = [UIColor whiteColor];
    lable.font = [UIFont systemFontOfSize:28];
    self.navigationItem.titleView = lable;
    
    UITextField *textField = [[UITextField alloc]initWithFrame:CGRectMake(10, 10, 355, 40)];
    textField.backgroundColor=[UIColor whiteColor];
    textField.layer.cornerRadius=5;
    textField.layer.masksToBounds=YES;
    [self.view addSubview:textField];
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"3131"]];
    imageView.frame = CGRectMake(10, 6, 35, 35);
    [textField addSubview:imageView];
    
    UIImageView *imageViewTwo = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"31314"]];
    imageViewTwo.frame = CGRectMake(10, 80, 355, 35);
    [self.view addSubview:imageViewTwo];

    
    
    
    NSArray *array = [NSArray arrayWithObjects:@"平面设计",@"网页设计",@"UI/icon",@"插画／手绘", nil];
    for(int i=0;i<4;i++){
    button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(10+i*91, 130, 81, 25);
        button.backgroundColor = [UIColor whiteColor];
    [button setTitle:[array objectAtIndex:i] forState:UIControlStateNormal];
        button.titleLabel.font = [UIFont systemFontOfSize:13];
        [button setBackgroundImage:[UIImage imageNamed:@"background_main"] forState:UIControlStateSelected];
        [button setTitle:[array  objectAtIndex:i] forState:UIControlStateSelected];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
         [button addTarget:self action:@selector(touch:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
    }
    
    NSArray *arrayTwo = [NSArray arrayWithObjects:@"虚拟与设计", @"影视",@"摄影",@"其他",nil];
    for(int i=0;i<4;i++){
        button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(10+i*91, 170, 81, 25);
        button.backgroundColor = [UIColor whiteColor];
        [button setTitle:[arrayTwo objectAtIndex:i] forState:UIControlStateNormal];
        [button setBackgroundImage:[UIImage imageNamed:@"background_main"] forState:UIControlStateSelected];
        [button setTitle:[arrayTwo objectAtIndex:i] forState:UIControlStateSelected];
        button.titleLabel.font = [UIFont systemFontOfSize:13];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
         [button addTarget:self action:@selector(touch:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
    }
    
        UIImageView *imageViewThree = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"41412"]];
        imageViewThree.frame = CGRectMake(10, 200, 355, 35);
        [self.view addSubview:imageViewThree];

        
        NSArray *arrayThree = [NSArray arrayWithObjects:@"人气最高",@"收藏最多",@"评论最多",@"编辑精选",nil];
        for(int i=0;i<4;i++){
            button = [UIButton buttonWithType:UIButtonTypeCustom];
            button.frame = CGRectMake(10+i*91, 250, 81, 25);
            button.backgroundColor = [UIColor whiteColor];
            [button setTitle:[arrayThree objectAtIndex:i] forState:UIControlStateNormal];
            [button setBackgroundImage:[UIImage imageNamed:@"background_main"] forState:UIControlStateSelected];
            [button setTitle:[arrayThree objectAtIndex:i] forState:UIControlStateSelected];
             [button addTarget:self action:@selector(touch:) forControlEvents:UIControlEventTouchUpInside];
            button.titleLabel.font = [UIFont systemFontOfSize:13];
            [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            [self.view addSubview:button];
    }
        UIImageView *imageViewFour = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"4114"]];
        imageViewFour.frame = CGRectMake(10, 280, 355, 35);
        [self.view addSubview:imageViewFour];
        
        
        NSArray *arrayFour = [NSArray arrayWithObjects:@"30分钟前",@"1小时前",@"1月前",@"1年前",nil];
        for(int i=0;i<4;i++){
            button = [UIButton buttonWithType:UIButtonTypeCustom];
            button.frame = CGRectMake(10+i*91, 330, 81, 25);
            button.backgroundColor = [UIColor whiteColor];
            [button setTitle:[arrayFour objectAtIndex:i] forState:UIControlStateNormal];
            [button setBackgroundImage:[UIImage imageNamed:@"background_main"] forState:UIControlStateSelected];
            [button setTitle:[arrayFour objectAtIndex:i] forState:UIControlStateSelected];
            [button setTitleColor:[UIColor blackColor] forState:UIControlStateSelected];
            button.titleLabel.font = [UIFont systemFontOfSize:13];
            
            [button addTarget:self action:@selector(touch:) forControlEvents:UIControlEventTouchUpInside];
            [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            [self.view addSubview:button];
        }

    }

    // Do any additional setup after loading the view.
- (void)touch:(UIButton *)sender{
    sender.selected = !sender.selected;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
