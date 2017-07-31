//
//  ViewController_Five_Four_Zero.m
//  Share
//
//  Created by JACK on 2017/7/31.
//  Copyright © 2017年 JACK. All rights reserved.
//

#import "ViewController_Five_Four_Zero.h"

@interface ViewController_Five_Four_Zero ()<UITableViewDelegate,UITableViewDataSource>{
    UITableView *tableView;
}
@end

@implementation ViewController_Five_Four_Zero

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *buttonOne = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonOne.frame = CGRectMake(10, 25, 30, 20);
    [buttonOne setImage:[UIImage imageNamed:@"back_img"] forState:UIControlStateNormal];
    [buttonOne addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(40, 0, 100, 20)];
    label.textColor = [UIColor whiteColor];
    label.text = @"基本资料";
    [buttonOne addSubview:label];
    
    UIView *imageView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 375, 64)];
    imageView.backgroundColor = [UIColor colorWithRed:53.0/255 green:143.0/255 blue:203.0/255 alpha:1];
    [self.view addSubview:imageView];
    [imageView addSubview:buttonOne];

    tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 64, 375, 500)];
    tableView.dataSource = self;
    tableView.delegate = self;
    [self.view addSubview:tableView];
    // Do any additional setup after loading the view.
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellId = @"cellId";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if(!cell){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellId];
    }
    NSArray *array = [NSArray arrayWithObjects:@"头像",@"昵称",@"签名",@"性别",@"邮箱", nil];
    
    if (indexPath.row == 0) {
        UILabel *labelNew = [[UILabel alloc]initWithFrame:CGRectMake(50, 50, 50, 15)];
        labelNew.text = [array objectAtIndex:indexPath.row];
        [cell addSubview:labelNew];
        
        UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"3133"]];
        imageView.frame = CGRectMake(100, 10, 110, 110);
        [cell addSubview:imageView];
        
    }else if(indexPath.row == 1){
        UILabel *labelNew = [[UILabel alloc]initWithFrame:CGRectMake(50, 20, 50, 15)];
        labelNew.text = [array objectAtIndex:indexPath.row];
        [cell addSubview:labelNew];
        
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(100, 20, 100, 15)];
        label.text = @"share小白";
        [cell addSubview:label];
        
    }else if(indexPath.row == 2){
        UILabel *labelNew = [[UILabel alloc]initWithFrame:CGRectMake(50,20, 50, 15)];
        labelNew.text = [array objectAtIndex:indexPath.row];
        [cell addSubview:labelNew];
        
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(100, 20, 275, 15)];
        label.text = @"开心了就笑，不开心了就过会儿再笑";
        [cell addSubview:label];
        
    }else if(indexPath.row == 3){
        UILabel *labelNew = [[UILabel alloc]initWithFrame:CGRectMake(50, 20, 50, 15)];
        labelNew.text = [array objectAtIndex:indexPath.row];
        [cell addSubview:labelNew];
        UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"man"]];
        imageView.frame = CGRectMake(100, 16, 20,20);
        [cell addSubview:imageView];
        
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(125, 20, 20, 15)];
        label.text = @"男";
        [cell addSubview:label];
        
        UIImageView *imageViewTwo = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"woman"]];
        imageViewTwo.frame = CGRectMake(170, 16, 20,20);
        [cell addSubview:imageViewTwo];
        
        UILabel *labelTwo = [[UILabel alloc]initWithFrame:CGRectMake(195, 20, 20, 15)];
        labelTwo.text = @"女";
        [cell addSubview:labelTwo];

    }else if(indexPath.row == 4){
        UILabel *labelNew = [[UILabel alloc]initWithFrame:CGRectMake(50, 20, 50, 15)];
        labelNew.text = [array objectAtIndex:indexPath.row];
        [cell addSubview:labelNew];
        
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(100, 20, 275, 15)];
        label.text = @"186####3@qq.com";
        [cell addSubview:label];
    }
    
    
    return cell;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.row == 0){
        return 130;
    }else{
        return 50;
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)back{
    [self dismissViewControllerAnimated:YES completion:nil];
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
