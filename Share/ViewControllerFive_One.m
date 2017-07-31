//
//  ViewControllerFive_One.m
//  Share
//
//  Created by JACK on 2017/7/31.
//  Copyright © 2017年 JACK. All rights reserved.
//

#import "ViewControllerFive_One.h"
#import"ViewControllerFive_One_Zero.h"
#import "ViewControllerFive_One_One.h"
#import "ViewControllerFive_One_Two.h"
#import "ViewControllerFive_One_Three.h"
#import "ViewControllerFive_One_Four.h"
@interface ViewControllerFive_One ()<UITableViewDelegate,UITableViewDataSource>{
    UITableView *tableView;
    UIButton *button;
}

@end

@implementation ViewControllerFive_One

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *buttonOne = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonOne.frame = CGRectMake(10, 25, 30, 20);
    [buttonOne setImage:[UIImage imageNamed:@"back_img"] forState:UIControlStateNormal];
    [buttonOne addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(40, 0, 100, 20)];
    label.textColor = [UIColor whiteColor];
    label.text = @"我的信息";
    [buttonOne addSubview:label];
    
    UIView *imageView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 375, 64)];
    imageView.backgroundColor = [UIColor colorWithRed:53.0/255 green:143.0/255 blue:203.0/255 alpha:1];
    [self.view addSubview:imageView];
    [imageView addSubview:buttonOne];
    
    tableView = [[UITableView alloc]initWithFrame: CGRectMake(0, 64, 375, 500)];
    [self.view addSubview:tableView];
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.tableFooterView = [[UIView alloc]initWithFrame:CGRectZero];
    // Do any additional setup after loading the view.
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"cellId";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle  reuseIdentifier:cellId];
    NSArray *arrayNew = [NSArray arrayWithObjects:@"评论",@"推荐我的",@"新关注的",@"私信",@"活动通知",nil];
    if(indexPath.section == 0 ){
        
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(60, 18, 100, 8)];
        label.text = [arrayNew objectAtIndex:indexPath.row];
        [cell addSubview:label];
        
        
        button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(320, 15, 15, 15);
        [button setImage:[UIImage imageNamed:@"touch"]forState:UIControlStateNormal];
        [cell addSubview:button];
        
        
        if (indexPath.row == 0) {
            label = [[UILabel alloc]initWithFrame:CGRectMake(342, 15,15, 15)];
            label.text = @"7";
            [cell addSubview:label];
            
            [button addTarget:self action:@selector(enterZero) forControlEvents:UIControlEventTouchUpInside];
        }else if(indexPath.row == 1){
            label = [[UILabel alloc]initWithFrame:CGRectMake(342, 15,15, 15)];
            label.text = @"9";
            [cell addSubview:label];
            
            [button addTarget:self action:@selector(enterOne) forControlEvents:UIControlEventTouchUpInside];
        }else if(indexPath.row == 2){
            label = [[UILabel alloc]initWithFrame:CGRectMake(342, 15,15, 15)];
            label.text = @"5";
            [cell addSubview:label];
            
            [button addTarget:self action:@selector(enterTwo) forControlEvents:UIControlEventTouchUpInside];
        }else if(indexPath.row == 3){
            label = [[UILabel alloc]initWithFrame:CGRectMake(342, 15,15, 15)];
            label.text = @"4";
            [cell addSubview:label];
            
            [button addTarget:self action:@selector(enterThree) forControlEvents:UIControlEventTouchUpInside];
        }else if(indexPath.row == 4){
            label = [[UILabel alloc]initWithFrame:CGRectMake(342, 15,15, 15)];
            label.text = @"1";
            [cell addSubview:label];
            
            [button addTarget:self action:@selector(enterFour) forControlEvents:UIControlEventTouchUpInside];
        }
        
    }
    return cell;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}

- (void)back{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)enterZero{
    ViewControllerFive_One_Zero *Zero = [[ViewControllerFive_One_Zero alloc]init];
    [self presentViewController:Zero animated:YES completion:nil];
}
- (void)enterOne{
    ViewControllerFive_One_One *One = [[ViewControllerFive_One_One alloc]init];
    [self presentViewController:One animated:YES completion:nil];
}
- (void)enterTwo{
    ViewControllerFive_One_Two *Two = [[ViewControllerFive_One_Two alloc]init];
    [self presentViewController:Two animated:YES completion:nil];
}
- (void)enterThree{
    ViewControllerFive_One_Three *Three = [[ViewControllerFive_One_Three alloc]init];
    [self presentViewController:Three animated:YES completion:nil];
}
- (void)enterFour{
    ViewControllerFive_One_Four *Three = [[ViewControllerFive_One_Four alloc]init];
    [self presentViewController:Three animated:YES completion:nil];}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
