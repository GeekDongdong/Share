//
//  ViewController_Five_Four_Two.m
//  Share
//
//  Created by JACK on 2017/7/31.
//  Copyright © 2017年 JACK. All rights reserved.
//

#import "ViewController_Five_Four_Two.h"

@interface ViewController_Five_Four_Two ()<UITableViewDelegate,UITableViewDataSource>{
    UITableView *tableView;
    UIButton *button;
}

@end

@implementation ViewController_Five_Four_Two

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *buttonOne = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonOne.frame = CGRectMake(10, 25, 30, 20);
    [buttonOne setImage:[UIImage imageNamed:@"back_img"] forState:UIControlStateNormal];
    [buttonOne addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(40, 0, 100, 20)];
    label.textColor = [UIColor whiteColor];
    label.text = @"消息设置";
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
    NSArray *arrayNew = [NSArray arrayWithObjects:@"接受消息通知",@"通知显示栏",@"声音",@"振动",@"关注更新",nil];
        
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(60, 18, 150, 8)];
        label.text = [arrayNew objectAtIndex:indexPath.row];
        [cell addSubview:label];
        
        
        button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(320, 15, 15, 15);
        [button setImage:[UIImage imageNamed:@"selectNo"]forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"selectYes"] forState:UIControlStateSelected];
    [button addTarget:self action:@selector(change:) forControlEvents:UIControlEventTouchUpInside];
        [cell addSubview:button];

    return cell;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}

- (void)back{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)change:(UIButton *)sender{
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
