//
//  ViewControllerFive_One_Three.m
//  Share
//
//  Created by JACK on 2017/7/31.
//  Copyright © 2017年 JACK. All rights reserved.
//

#import "ViewControllerFive_One_Three.h"
#import "Five_One_Three_Zero.h"
@interface ViewControllerFive_One_Three ()<UITableViewDelegate,UITableViewDataSource>{
    UITableView *tableView;
}


@end

@implementation ViewControllerFive_One_Three

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *buttonOne = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonOne.frame = CGRectMake(10, 25, 30, 20);
    [buttonOne setImage:[UIImage imageNamed:@"back_img"] forState:UIControlStateNormal];
    [buttonOne addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(40, 0, 100, 20)];
    label.textColor = [UIColor whiteColor];
    label.text = @"私信";
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
    NSArray *arrayOne = [NSArray arrayWithObjects:@"share小兰",@"share小雪",@"share小明",@"share萌萌",nil];
    NSArray *arrayTwo = [NSArray arrayWithObjects:@"你的作品我很喜欢",@"谢谢，已关注你",@"为你点赞！",@"拍的照片不错哦", nil];
    NSArray *arrayThree= [NSArray arrayWithObjects:@"11-03 9:45",@"11-03 10:00",@"11-03 10:23",@"11-03 11:20", nil];
    NSString *name;
    name = [NSString stringWithFormat:@"sixin_img%ld",indexPath.row+2];
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:name]];
    imageView.frame = CGRectMake(50, 10, 70, 70);
    [cell addSubview:imageView];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(125, 20, 100, 10)];
    label.text = [arrayOne objectAtIndex:indexPath.row];
    [cell addSubview:label];
    
    UILabel *labelTwo = [[UILabel alloc]initWithFrame:CGRectMake(125, 60, 150, 10)];
    labelTwo.text = [arrayTwo objectAtIndex:indexPath.row];
    labelTwo.textColor = [UIColor colorWithRed:53.0/255 green:143.0/255 blue:203.0/255 alpha:1];
    labelTwo.font = [UIFont systemFontOfSize:13];
    [cell addSubview:labelTwo];
    
    UILabel *labelThree = [[UILabel alloc]initWithFrame:CGRectMake(275, 17, 100, 10)];
    labelThree.text = [arrayThree objectAtIndex:indexPath.row];
    labelThree.textColor = [UIColor grayColor];
    labelThree.font = [UIFont systemFontOfSize:11];
    [cell addSubview:labelThree];
    
    if(indexPath.row == 0){
        UIButton *buttonNew = [UIButton buttonWithType:UIButtonTypeCustom];
        buttonNew.frame = CGRectMake(50, 10, 70, 70);
        [buttonNew setImage:[UIImage imageNamed:name] forState:UIControlStateNormal];
        [buttonNew addTarget:self action:@selector(point) forControlEvents:UIControlEventTouchUpInside];
        [cell.contentView addSubview:buttonNew];
    }
    return cell;
}
- (void)point{
    Five_One_Three_Zero *zero = [[Five_One_Three_Zero alloc]init];
    [self presentViewController:zero animated:YES completion:nil];
}
- (void)back{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
        return 4;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 90;
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
