//
//  ViewController_Five_Four_One.m
//  Share
//
//  Created by JACK on 2017/7/31.
//  Copyright © 2017年 JACK. All rights reserved.
//

#import "ViewController_Five_Four_One.h"
#import "ViewController.h"
@interface ViewController_Five_Four_One ()<UITableViewDelegate,UITableViewDataSource>{
    UITableView *tableView;
    UITextField *textField;
    UITextField *textFieldKey;
}
extern NSString *password;
@end

@implementation ViewController_Five_Four_One

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *buttonOne = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonOne.frame = CGRectMake(10, 25, 30, 20);
    [buttonOne setImage:[UIImage imageNamed:@"back_img"] forState:UIControlStateNormal];
    [buttonOne addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(40, 0, 100, 20)];
    label.textColor = [UIColor whiteColor];
    label.text = @"修改密码";
    [buttonOne addSubview:label];
    
    UIView *imageView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 375, 64)];
    imageView.backgroundColor = [UIColor colorWithRed:53.0/255 green:143.0/255 blue:203.0/255 alpha:1];
    [self.view addSubview:imageView];
    [imageView addSubview:buttonOne];
    
    tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 64, 375, 214)];
    tableView.tableFooterView = [[UIView alloc]initWithFrame:CGRectZero];
    tableView.scrollEnabled = NO;
    [self.view addSubview:tableView];
    tableView.delegate = self;
    tableView.dataSource = self;
    
    UIButton *buttonTwo = [[UIButton alloc]initWithFrame:CGRectMake(160,250, 55, 30)];
    [buttonTwo setTitle:@"提交" forState:UIControlStateNormal];
    [buttonTwo setTitle:@"提交" forState:UIControlStateSelected];
    buttonTwo.backgroundColor = [UIColor brownColor];
    [self.view addSubview:buttonTwo];
    [buttonTwo addTarget:self action:@selector(submit) forControlEvents:UIControlEventTouchUpInside];
    
    // Do any additional setup after loading the view.
}
- (void)submit{
    password = textFieldKey.text;
    ViewController *vc = [[ViewController alloc]init];
    [self presentViewController:vc animated:YES completion:nil];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellId = @"cellId";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if(!cell){
    cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle  reuseIdentifier:cellId];
    }
    NSArray *array = [NSArray arrayWithObjects:@"431",@"4312",@"41411", nil];
    NSArray *arrayTwo = [NSArray arrayWithObjects:@"6-20英文或数字结合",@"6-20英文或数字结合",@"请再次确认输入密码", nil];
    if(indexPath.row == 1){
    textFieldKey = [[UITextField alloc]initWithFrame:CGRectMake(0, 0, 375, 30)];
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[array objectAtIndex:indexPath.row]]];
    textFieldKey.leftView = imageView;
    textFieldKey.leftViewMode=UITextFieldViewModeAlways;
    textFieldKey.placeholder = [arrayTwo objectAtIndex:indexPath.row];
    [cell addSubview:textFieldKey];
    }else {
    textField = [[UITextField alloc]initWithFrame:CGRectMake(0, 0, 375, 30)];
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[array objectAtIndex:indexPath.row]]];
    textField.leftView = imageView;
    textField.leftViewMode=UITextFieldViewModeAlways;
    textField.placeholder = [arrayTwo objectAtIndex:indexPath.row];
    [cell addSubview:textField];
    }
    
    return cell;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
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
