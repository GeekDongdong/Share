//
//  ViewControllerThree.m
//  Share
//
//  Created by JACK on 2017/7/27.
//  Copyright © 2017年 JACK. All rights reserved.
//

#import "ViewControllerThree.h"

@interface ViewControllerThree ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewControllerThree

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone;
     self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *lable = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 50, 133)];
    lable.text = @"文章";
    lable.textColor = [UIColor whiteColor];
    lable.font = [UIFont systemFontOfSize:28];
    self.navigationItem.titleView = lable;
    
    UIButton *buttonOne = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonOne.frame = CGRectMake(0, 0, 125, 35);
    [buttonOne setTitle:@"精选文章"  forState:UIControlStateNormal];
    buttonOne.backgroundColor = [UIColor colorWithRed:91.0/255 green:91.0/255 blue:91.0/255 alpha:1];
        UIImageView *imageViewOne = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"essay_line"]];
    imageViewOne.frame = CGRectMake(123, 5, 2, 25);
    [buttonOne addSubview:imageViewOne];
    [self.view addSubview:buttonOne];
    
    UIButton *buttonTwo = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonTwo.frame = CGRectMake(125, 0, 125, 35);
    [buttonTwo setTitle:@"热门推荐"  forState:UIControlStateNormal];
    buttonTwo.backgroundColor = [UIColor colorWithRed:91.0/255 green:91.0/255 blue:91.0/255 alpha:1];
    UIImageView *imageViewTwo = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"essay_line"]];
    imageViewTwo.frame = CGRectMake(123, 5, 2, 25);
    [buttonTwo addSubview:imageViewTwo];
    [self.view addSubview:buttonTwo];
    
    
    UIButton *buttonThree = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonThree.frame = CGRectMake(250, 0, 125, 35);
    [buttonThree setTitle:@"全部文章"  forState:UIControlStateNormal];
    buttonThree.backgroundColor = [UIColor colorWithRed:91.0/255 green:91.0/255 blue:91.0/255 alpha:1];
    [self.view addSubview:buttonThree];
    
    UITableView *tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 35, 375,550)];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"cellId";
    
    NSInteger kindexPath = indexPath.row + 50;
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle  reuseIdentifier:cellId];
    if(cell){
        NSString *name = [NSString stringWithFormat:@"%ld",(long)kindexPath];
        cell.imageView.image = [UIImage imageNamed:name];
        ;
    }
    
    if(indexPath.row == 0){
        
        
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(200, 10, 150, 20)];
        label.text = @"设计反馈";
        [cell addSubview:label];
        
        UILabel *labelTwo = [[UILabel alloc]initWithFrame:CGRectMake(200, 30, 150, 20)];
        labelTwo.textColor = [UIColor grayColor];
        labelTwo.text = @"原创-插画-练习写作";
        labelTwo.font = [UIFont systemFontOfSize:13];
        [cell addSubview:labelTwo];
        
        
        UILabel *labelThree = [[UILabel alloc]initWithFrame:CGRectMake(200, 50, 150, 20)];
        labelThree.text = @"15分钟前";
        labelThree.textColor = [UIColor grayColor];
        labelThree.font = [UIFont systemFontOfSize:13];
        [cell addSubview:labelThree];
        
        
        UILabel *labelFour = [[UILabel alloc]initWithFrame:CGRectMake(300, 12, 150, 20)];
        labelFour.text = @"share小白";
        labelFour.font = [UIFont systemFontOfSize:14];
        [cell addSubview:labelFour];
        
        UIButton *buttonOne = [UIButton buttonWithType:UIButtonTypeCustom];
        buttonOne.frame = CGRectMake(200, 90, 20, 20);
        [buttonOne setImage:[UIImage imageNamed:@"心"] forState:UIControlStateNormal];
        [cell addSubview:buttonOne];
        UILabel *labelFive = [[UILabel alloc]initWithFrame:CGRectMake(220, 90, 30, 20)];
        labelFive.text = @"102";
        labelFive.font = [UIFont systemFontOfSize:13];
        labelFive.textColor = [UIColor colorWithRed:53.0/255 green:143.0/255 blue:203.0/255 alpha:1];
        [cell addSubview:labelFive];
        
        
        UIButton *buttonTwo = [UIButton buttonWithType:UIButtonTypeCustom];
        buttonTwo.frame = CGRectMake(260, 90, 20, 20);
        [buttonTwo setImage:[UIImage imageNamed:@"眼睛"] forState:UIControlStateNormal];
        [cell addSubview:buttonTwo];
        UILabel *labelSix = [[UILabel alloc]initWithFrame:CGRectMake(280, 90, 30, 20)];
        labelSix.text = @"26";
        labelSix.font = [UIFont systemFontOfSize:13];
        labelSix.textColor = [UIColor colorWithRed:53.0/255 green:143.0/255 blue:203.0/255 alpha:1];
        [cell addSubview:labelSix];
        
        
        UIButton *buttonThree = [UIButton buttonWithType:UIButtonTypeCustom];
        buttonThree.frame = CGRectMake(320, 90, 20, 20);
        [buttonThree setImage:[UIImage imageNamed:@"分享"] forState:UIControlStateNormal];
        [cell addSubview:buttonThree];
        UILabel *labelSeven = [[UILabel alloc]initWithFrame:CGRectMake(340, 90, 30, 20)];
        labelSeven.text = @"20";
        labelSeven.font = [UIFont systemFontOfSize:13];
        labelSeven.textColor = [UIColor colorWithRed:53.0/255 green:143.0/255 blue:203.0/255 alpha:1];
        [cell addSubview:labelSeven];
    }else if(indexPath.row == 1){
        
        
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(200, 10, 150, 20)];
        label.text = @"用户设计PK战！";
        label.numberOfLines = 0;
        [cell addSubview:label];
        
        UILabel *labelTwo = [[UILabel alloc]initWithFrame:CGRectMake(200, 30, 150, 20)];
        labelTwo.font = [UIFont systemFontOfSize:14];
        labelTwo.text = @"share小王";
        [cell addSubview:labelTwo];
        
        
        UILabel *labelThree = [[UILabel alloc]initWithFrame:CGRectMake(200, 50, 150, 20)];
        labelThree.text = @"平面设计";
        labelThree.textColor = [UIColor grayColor];
        labelThree.font = [UIFont systemFontOfSize:13];
        [cell addSubview:labelThree];
        
        
        UILabel *labelFour = [[UILabel alloc]initWithFrame:CGRectMake(200, 70, 150, 20)];
        labelFour.text = @"16分钟前";
        labelFour.textColor = [UIColor grayColor];
        labelFour.font = [UIFont systemFontOfSize:13];
        [cell addSubview:labelFour];
        
        UIButton *buttonOne = [UIButton buttonWithType:UIButtonTypeCustom];
        buttonOne.frame = CGRectMake(200, 90, 20, 20);
        [buttonOne setImage:[UIImage imageNamed:@"心"] forState:UIControlStateNormal];
        [cell addSubview:buttonOne];
        UILabel *labelFive = [[UILabel alloc]initWithFrame:CGRectMake(220, 90, 30, 20)];
        labelFive.text = @"102";
        labelFive.font = [UIFont systemFontOfSize:13];
        labelFive.textColor = [UIColor colorWithRed:53.0/255 green:143.0/255 blue:203.0/255 alpha:1];
        [cell addSubview:labelFive];
        
        
        UIButton *buttonTwo = [UIButton buttonWithType:UIButtonTypeCustom];
        buttonTwo.frame = CGRectMake(260, 90, 20, 20);
        [buttonTwo setImage:[UIImage imageNamed:@"眼睛"] forState:UIControlStateNormal];
        [cell addSubview:buttonTwo];
        UILabel *labelSix = [[UILabel alloc]initWithFrame:CGRectMake(280, 90, 30, 20)];
        labelSix.text = @"26";
        labelSix.font = [UIFont systemFontOfSize:13];
        labelSix.textColor = [UIColor colorWithRed:53.0/255 green:143.0/255 blue:203.0/255 alpha:1];
        [cell addSubview:labelSix];
        
        
        UIButton *buttonThree = [UIButton buttonWithType:UIButtonTypeCustom];
        buttonThree.frame = CGRectMake(320, 90, 20, 20);
        [buttonThree setImage:[UIImage imageNamed:@"分享"] forState:UIControlStateNormal];
        [cell addSubview:buttonThree];
        UILabel *labelSeven = [[UILabel alloc]initWithFrame:CGRectMake(340, 90, 30, 20)];
        labelSeven.text = @"20";
        labelSeven.font = [UIFont systemFontOfSize:13];
        labelSeven.textColor = [UIColor colorWithRed:53.0/255 green:143.0/255 blue:203.0/255 alpha:1];
        [cell addSubview:labelSeven];
        
    }else if(indexPath.row == 2)   {
        
        
        
        
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(200, 10, 150, 20)];
        label.text = @"字体故事";
        [cell addSubview:label];
        
        UILabel *labelTwo = [[UILabel alloc]initWithFrame:CGRectMake(200, 30, 150, 20)];
        labelTwo.font = [UIFont systemFontOfSize:14];
        labelTwo.text = @"share小吕";
        [cell addSubview:labelTwo];
        
        
        UILabel *labelThree = [[UILabel alloc]initWithFrame:CGRectMake(200, 50, 150, 20)];
        labelThree.text = @"平面设计-海报设计";
        labelThree.textColor = [UIColor grayColor];
        labelThree.font = [UIFont systemFontOfSize:13];
        [cell addSubview:labelThree];
        
        
        UILabel *labelFour = [[UILabel alloc]initWithFrame:CGRectMake(200, 70, 150, 20)];
        labelFour.text = @"17分钟前";
        labelFour.textColor = [UIColor grayColor];
        labelFour.font = [UIFont systemFontOfSize:13];
        [cell addSubview:labelFour];
        
        UIButton *buttonOne = [UIButton buttonWithType:UIButtonTypeCustom];
        buttonOne.frame = CGRectMake(200, 90, 20, 20);
        [buttonOne setImage:[UIImage imageNamed:@"心"] forState:UIControlStateNormal];
        [cell addSubview:buttonOne];
        UILabel *labelFive = [[UILabel alloc]initWithFrame:CGRectMake(220, 90, 30, 20)];
        labelFive.text = @"45";
        labelFive.font = [UIFont systemFontOfSize:13];
        labelFive.textColor = [UIColor colorWithRed:53.0/255 green:143.0/255 blue:203.0/255 alpha:1];
        [cell addSubview:labelFive];
        
        
        UIButton *buttonTwo = [UIButton buttonWithType:UIButtonTypeCustom];
        buttonTwo.frame = CGRectMake(260, 90, 20, 20);
        [buttonTwo setImage:[UIImage imageNamed:@"眼睛"] forState:UIControlStateNormal];
        [cell addSubview:buttonTwo];
        UILabel *labelSix = [[UILabel alloc]initWithFrame:CGRectMake(280, 90, 30, 20)];
        labelSix.text = @"105";
        labelSix.font = [UIFont systemFontOfSize:13];
        labelSix.textColor = [UIColor colorWithRed:53.0/255 green:143.0/255 blue:203.0/255 alpha:1];
        [cell addSubview:labelSix];
        
        
        UIButton *buttonThree = [UIButton buttonWithType:UIButtonTypeCustom];
        buttonThree.frame = CGRectMake(320, 90, 20, 20);
        [buttonThree setImage:[UIImage imageNamed:@"分享"] forState:UIControlStateNormal];
        [cell addSubview:buttonThree];
        UILabel *labelSeven = [[UILabel alloc]initWithFrame:CGRectMake(340, 90, 30, 20)];
        labelSeven.text = @"20";
        labelSeven.font = [UIFont systemFontOfSize:13];
        labelSeven.textColor = [UIColor colorWithRed:53.0/255 green:143.0/255 blue:203.0/255 alpha:1];
        [cell addSubview:labelSeven];
    }else if(indexPath.row == 3){
        
        
        
        
        
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(200, 10, 175, 48)];
        label.text = @"版本整理术：高效解决多风格要求";
        label.numberOfLines = 0;
        [cell addSubview:label];
        
        UILabel *labelTwo = [[UILabel alloc]initWithFrame:CGRectMake(300, 33, 150, 20)];
        labelTwo.font = [UIFont systemFontOfSize:14];
        labelTwo.text = @"share小王";
        [cell addSubview:labelTwo];
        
        
        UILabel *labelThree = [[UILabel alloc]initWithFrame:CGRectMake(200, 50, 150, 20)];
        labelThree.text = @"设计文章-经验-案例分析";
        labelThree.textColor = [UIColor grayColor];
        labelThree.font = [UIFont systemFontOfSize:13];
        [cell addSubview:labelThree];
        
        
        UILabel *labelFour = [[UILabel alloc]initWithFrame:CGRectMake(200, 70, 150, 20)];
        labelFour.text = @"4小时前";
        labelFour.textColor = [UIColor grayColor];
        labelFour.font = [UIFont systemFontOfSize:13];
        [cell addSubview:labelFour];
        
        UIButton *buttonOne = [UIButton buttonWithType:UIButtonTypeCustom];
        buttonOne.frame = CGRectMake(200, 90, 20, 20);
        [buttonOne setImage:[UIImage imageNamed:@"心"] forState:UIControlStateNormal];
        [cell addSubview:buttonOne];
        UILabel *labelFive = [[UILabel alloc]initWithFrame:CGRectMake(220, 90, 30, 20)];
        labelFive.text = @"89";
        labelFive.font = [UIFont systemFontOfSize:13];
        labelFive.textColor = [UIColor colorWithRed:53.0/255 green:143.0/255 blue:203.0/255 alpha:1];
        [cell addSubview:labelFive];
        
        
        
        
        UIButton *buttonTwo = [UIButton buttonWithType:UIButtonTypeCustom];
        buttonTwo.frame = CGRectMake(260, 90, 20, 20);
        [buttonTwo setImage:[UIImage imageNamed:@"眼睛"] forState:UIControlStateNormal];
        [cell addSubview:buttonTwo];
        UILabel *labelSix = [[UILabel alloc]initWithFrame:CGRectMake(280, 90, 30, 20)];
        labelSix.text = @"24";
        labelSix.font = [UIFont systemFontOfSize:13];
        labelSix.textColor = [UIColor colorWithRed:53.0/255 green:143.0/255 blue:203.0/255 alpha:1];
        [cell addSubview:labelSix];
        
        
        UIButton *buttonThree = [UIButton buttonWithType:UIButtonTypeCustom];
        buttonThree.frame = CGRectMake(320, 90, 20, 20);
        [buttonThree setImage:[UIImage imageNamed:@"分享"] forState:UIControlStateNormal];
        [cell addSubview:buttonThree];
        UILabel *labelSeven = [[UILabel alloc]initWithFrame:CGRectMake(340, 90, 30, 20)];
        labelSeven.text = @"15";
        labelSeven.font = [UIFont systemFontOfSize:13];
        labelSeven.textColor = [UIColor colorWithRed:53.0/255 green:143.0/255 blue:203.0/255 alpha:1];
        [cell addSubview:labelSeven];
    }
    
    return cell;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 4;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 130;
}

@end
