//
//  ViewControllerFive.m
//  Share
//
//  Created by JACK on 2017/7/27.
//  Copyright © 2017年 JACK. All rights reserved.
//

#import "ViewControllerFive.h"
#import "ViewControllerFive_One.h"
#import "ViewControllerFive_Four.h"
#import "Five_Zero.h"
#import "VC_Five_Two.h"
@interface ViewControllerFive ()<UITableViewDelegate,UITableViewDataSource>{
    UIButton *button;
}

@end

@implementation ViewControllerFive

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *lable = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 133)];
    lable.text = @"个人信息";
    lable.textColor = [UIColor whiteColor];
    lable.font = [UIFont systemFontOfSize:28];
    self.navigationItem.titleView = lable;    // Do any additional setup after loading the view.
    
    UITableView *tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, 375,550)];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"cellId";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle  reuseIdentifier:cellId];
    NSArray *arrayNew = [NSArray arrayWithObjects:@"我上传的", @"我的信息",@"我推荐的",@"院系通知",@"设置",@"退出",nil];
    NSString *name2;
    if((indexPath.row == 0 )&& (indexPath.section == 0)){
        
        
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(160, 10, 150, 20)];
        label.text = @"share小白";
        [cell addSubview:label];
        
        UILabel *labelTwo = [[UILabel alloc]initWithFrame:CGRectMake(160, 30, 150, 20)];
        labelTwo.textColor = [UIColor grayColor];
        labelTwo.text = @"数媒／设计爱好者";
        labelTwo.font = [UIFont systemFontOfSize:13];
        [cell addSubview:labelTwo];
    
        
        
        UILabel *labelFour = [[UILabel alloc]initWithFrame:CGRectMake(160, 68, 200, 20)];
        labelFour.text = @"开心了就笑，不开心了就过会儿笑";
        labelFour.font = [UIFont systemFontOfSize:12];
        [cell addSubview:labelFour];
        
        UIButton *buttonOne = [UIButton buttonWithType:UIButtonTypeCustom];
        buttonOne.frame = CGRectMake(160, 90, 20, 20);
        [buttonOne setImage:[UIImage imageNamed:@"心"] forState:UIControlStateNormal];
        [cell addSubview:buttonOne];
        UILabel *labelFive = [[UILabel alloc]initWithFrame:CGRectMake(180, 90, 30, 20)];
        labelFive.text = @"102";
        labelFive.font = [UIFont systemFontOfSize:13];
        labelFive.textColor = [UIColor colorWithRed:53.0/255 green:143.0/255 blue:203.0/255 alpha:1];
        [cell addSubview:labelFive];
        
        
        UIButton *buttonTwo = [UIButton buttonWithType:UIButtonTypeCustom];
        buttonTwo.frame = CGRectMake(240, 90, 20, 20);
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
        cell.imageView.image = [UIImage imageNamed:@"sixin_img1"];
        [cell addSubview:labelSeven];
    }else if(indexPath.section == 1){
        
        name2 = [NSString stringWithFormat:@"img%ld",(long)indexPath.row];
        UIImageView *imageViewNew = [[UIImageView alloc]initWithImage:[UIImage imageNamed:name2]];
        imageViewNew.frame = CGRectMake(30, 15, 20, 15);
         [cell addSubview:imageViewNew];
        
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(60, 18, 100, 8)];
        label.text = [arrayNew objectAtIndex:indexPath.row];
        [cell addSubview:label];
        
        
        button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(320, 15, 15, 15);
        [button setImage:[UIImage imageNamed:@"touch"]forState:UIControlStateNormal];
        [cell addSubview:button];
        if(indexPath.row == 0){
            [button addTarget:self action:@selector(enterZero) forControlEvents:UIControlEventTouchUpInside];
        }else if(indexPath.row == 1){
            [button addTarget:self action:@selector(enterOne) forControlEvents:UIControlEventTouchUpInside];
        } else if(indexPath.row == 2){
            [button addTarget:self action:@selector(enterTwo) forControlEvents:UIControlEventTouchUpInside];
        }else if(indexPath.row == 3){
            [button addTarget:self action:@selector(enterThree) forControlEvents:UIControlEventTouchUpInside];
        }else if(indexPath.row == 4){
            [button addTarget:self action:@selector(enterFour) forControlEvents:UIControlEventTouchUpInside];
        }else if(indexPath.row == 5){
           [button addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        }
        
    }
    return cell;
}
- (void)back{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)enterZero{
    Five_Zero *zero = [[Five_Zero alloc]init];
    [self presentViewController:zero animated:YES completion:nil];
}

- (void)enterOne{
    ViewControllerFive_One *one = [[ViewControllerFive_One alloc]init];
    [self presentViewController:one animated:YES completion:nil];
}
- (void)enterTwo{
    VC_Five_Two *two = [[VC_Five_Two alloc]init];
    [self presentViewController:two animated:YES completion:nil];
}
- (void)enterThree{
    UIButton *buttonNew = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonNew.frame = CGRectMake(88, 100, 200, 200);
    [buttonNew setImage:[UIImage imageNamed:@"79EEFBFB605BE5E47CB56C6735C1FEAB"] forState:UIControlStateNormal];
     [buttonNew setImage:[UIImage imageNamed:@"79EEFBFB605BE5E47CB56C6735C1FEAB"] forState:UIControlStateSelected];
    buttonNew.tag = 14;
    [buttonNew addTarget:self action:@selector(tapMe) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttonNew];
   
}

- (void)enterFour{
    ViewControllerFive_Four *Four = [[ViewControllerFive_Four alloc]init];
    [self presentViewController:Four animated:YES completion:nil];
}
- (void)tapMe{
    for (UIView *subviews in [self.view subviews]) {
        if (subviews.tag==14) {
            [subviews removeFromSuperview];
        }
    }
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if(section == 0){
        return 1;
    }else if(section == 1){
        return 6;
    }
    return 0;
}
    
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
    {
        return 2;
    }
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
    {
        if(indexPath.section == 0){
            return 130;
        }else if(indexPath.section ==1){
            return 50;
        }
        return 0;
    }

@end
