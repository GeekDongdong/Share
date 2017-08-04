//
//  ViewControllerFive_One_Zero.m
//  Share
//
//  Created by JACK on 2017/7/31.
//  Copyright © 2017年 JACK. All rights reserved.
//

#import "ViewControllerFive_One_Zero.h"

@interface ViewControllerFive_One_Zero ()<UITableViewDataSource,UITableViewDelegate>{
    UITableView *tableView;
}

@end

@implementation ViewControllerFive_One_Zero

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *buttonOne = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonOne.frame = CGRectMake(10, 25, 30, 20);
    [buttonOne setImage:[UIImage imageNamed:@"back_img"] forState:UIControlStateNormal];
    [buttonOne addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(40, 0, 100, 20)];
    label.textColor = [UIColor whiteColor];
    label.text = @"评论";
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
    NSArray *arrayOne = [NSArray arrayWithObjects:@"孤独的狼",@"凤凰传奇",@"风飞沙",nil];
    NSArray *arrayTwo = [NSArray arrayWithObjects:@"        昨日贫道夜观天象，发现北斗七星有一颗星往南偏离了两厘米，便知施主气数已尽，今日见施主印堂发黑，眼睛发紫，胡言乱语，语无伦次，看来施主命不久矣啊！施主要想化险为夷唯有越过喜马拉雅山，登上珠穆朗玛峰向原始天尊求得一包“板蓝根”服下方能活命。",@"        看完了你发的说说，我关掉了手机，再走到冰箱里拿了一瓶青岛啤酒，猛喝了两口，来到窗前，看着外面细雨绵绵，此时我也控制不住自己的情绪，对着天空大吼一声：这TM写的什么j8玩意…屁大个事你TM也要发个说说！",@"         你又在这里吹牛逼了。工头到处找你，叫你赶紧回工地去，还有两车水泥要卸，工头说再不回去你那10天300块多工钱一分都别想拿到。还有村长来电话了，叫我转告你，隔壁村的王寡妇来你家提亲了，叫你明天赶紧结工钱回去和她把婚事给办了。", nil];
    NSArray *arrayThree= [NSArray arrayWithObjects:@"11-03 9:45",@"11-03 10:00",@"11-03 10:23",@"11-03 11:20", nil];
    NSString *name;
    name = [NSString stringWithFormat:@"sixin_img%ld",indexPath.row+2];
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:name]];
    imageView.frame = CGRectMake(50, 10, 70, 70);
    [cell addSubview:imageView];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(125, 40, 100, 10)];
    label.text = [arrayOne objectAtIndex:indexPath.row];
    [cell addSubview:label];
    
    UILabel *labelTwo = [[UILabel alloc]initWithFrame:CGRectMake(50, 50, 300, 260)];
    labelTwo.text = [arrayTwo objectAtIndex:indexPath.row];
    labelTwo.numberOfLines = 0;
    [cell addSubview:labelTwo];
    
    UILabel *labelThree = [[UILabel alloc]initWithFrame:CGRectMake(275, 17, 100, 10)];
    labelThree.text = [arrayThree objectAtIndex:indexPath.row];
    labelThree.textColor = [UIColor grayColor];
    labelThree.font = [UIFont systemFontOfSize:11];
    [cell addSubview:labelThree];

    return cell;
}
- (void)back{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 300;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
