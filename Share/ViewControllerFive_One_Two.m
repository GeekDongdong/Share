//
//  ViewControllerFive_One_Two.m
//  Share
//
//  Created by JACK on 2017/7/31.
//  Copyright © 2017年 JACK. All rights reserved.
//

#import "ViewControllerFive_One_Two.h"

@interface ViewControllerFive_One_Two ()<UITableViewDelegate,UITableViewDataSource>{
    UITableView *tableView;
}

@end

@implementation ViewControllerFive_One_Two

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *buttonOne = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonOne.frame = CGRectMake(10, 25, 30, 20);
    [buttonOne setImage:[UIImage imageNamed:@"back_img"] forState:UIControlStateNormal];
    [buttonOne addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(40, 0, 100, 20)];
    label.textColor = [UIColor whiteColor];
    label.text = @"新关注的";
    [buttonOne addSubview:label];
    
    UIView *imageView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 375, 64)];
    imageView.backgroundColor = [UIColor colorWithRed:53.0/255 green:143.0/255 blue:203.0/255 alpha:1];
    [self.view addSubview:imageView];
    [imageView addSubview:buttonOne];
    
    tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 64, 375,550)];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    // Do any additional setup after loading the view.
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"cellId";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if(!cell){
    cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle  reuseIdentifier:cellId];
    }
    NSArray *arrayNew = [NSArray arrayWithObjects:@"share小兰",@"share小雪",@"share小明",@"share萌萌",@"sharetLity",nil];
    NSString *name;
    name = [NSString stringWithFormat:@"sixin_img%ld",indexPath.row+2];
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:name]];
    imageView.frame = CGRectMake(50, 10, 70, 70);
    [cell addSubview:imageView];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(125, 40, 100, 10)];
    label.text = [arrayNew objectAtIndex:indexPath.row];
    [cell addSubview:label];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(275, 35, 65, 20);
    [button setImage:[UIImage imageNamed:@"guanzhu_pressed"] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"guanzhu_normal"] forState:UIControlStateSelected];
    [button addTarget:self action:@selector(guanZhu:) forControlEvents:UIControlEventTouchUpInside];
    [cell addSubview:button];
    
    return cell;
}
- (void)guanZhu:(UIButton *)sender{
       sender.selected = !sender.selected;
    }
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 90;
}

- (void)back{
    [self dismissViewControllerAnimated:YES completion:nil];
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
