//
//  VC_One_Button.m
//  Share
//
//  Created by JACK on 2017/8/1.
//  Copyright © 2017年 JACK. All rights reserved.
//

#import "VC_One_Button.h"

@interface VC_One_Button ()<UITableViewDelegate,UITableViewDataSource>{
    UIImageView *imageViewTwo;
}

@end

@implementation VC_One_Button

- (void)viewDidLoad {
    [super viewDidLoad];
    //self.edgesForExtendedLayout = UIRectEdgeNone;
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *buttonNew = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonNew.frame = CGRectMake(10, 25, 30, 20);
    [buttonNew setImage:[UIImage imageNamed:@"back_img"] forState:UIControlStateNormal];
    [buttonNew addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(40, 0, 100, 20)];
    label.textColor = [UIColor whiteColor];
    label.text = @"返回";
    [buttonNew addSubview:label];
    
    UIView *imageView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 375, 64)];
    imageView.backgroundColor = [UIColor colorWithRed:53.0/255 green:143.0/255 blue:203.0/255 alpha:1];
    [self.view addSubview:imageView];
    [imageView addSubview:buttonNew];
    
    UIImageView *imageViewKey = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"sixin_img1"]];
    imageViewKey.frame = CGRectMake(10, 74, 50, 50);
    [self.view addSubview:imageViewKey];
    
    
    UILabel *labelOne = [[UILabel alloc]initWithFrame:CGRectMake(70, 74, 150, 20)];
    labelOne.text = @"假日";
    [self.view addSubview:labelOne];
    
    UILabel *labelTwo = [[UILabel alloc]initWithFrame:CGRectMake(70, 114, 150, 20)];
    labelTwo.text = @"share小白";
    labelTwo.font = [UIFont systemFontOfSize:14];
    [self.view addSubview:labelTwo];
    
    UIButton *buttonOne = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonOne.frame = CGRectMake(200, 114, 20, 20);
    [buttonOne setImage:[UIImage imageNamed:@"心"] forState:UIControlStateNormal];
    [self.view addSubview:buttonOne];
    UILabel *labelThree = [[UILabel alloc]initWithFrame:CGRectMake(220, 114, 30, 20)];
    labelThree.text = @"102";
    labelThree.font = [UIFont systemFontOfSize:13];
    labelThree.textColor = [UIColor colorWithRed:53.0/255 green:143.0/255 blue:203.0/255 alpha:1];
    [self.view addSubview:labelThree];
    
    
    UIButton *buttonTwo = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonTwo.frame = CGRectMake(260, 114, 20, 20);
    [buttonTwo setImage:[UIImage imageNamed:@"眼睛"] forState:UIControlStateNormal];
    [self.view addSubview:buttonTwo];
    UILabel *labelSix = [[UILabel alloc]initWithFrame:CGRectMake(280, 114, 30, 20)];
    labelSix.text = @"26";
    labelSix.font = [UIFont systemFontOfSize:13];
    labelSix.textColor = [UIColor colorWithRed:53.0/255 green:143.0/255 blue:203.0/255 alpha:1];
    [self.view addSubview:labelSix];
    
    
    UIButton *buttonThree = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonThree.frame = CGRectMake(320, 114, 20, 20);
    [buttonThree setImage:[UIImage imageNamed:@"分享"] forState:UIControlStateNormal];
    [self.view addSubview:buttonThree];
    UILabel *labelSeven = [[UILabel alloc]initWithFrame:CGRectMake(340,114, 30, 20)];
    labelSeven.text = @"20";
    labelSeven.font = [UIFont systemFontOfSize:13];
    labelSeven.textColor = [UIColor colorWithRed:53.0/255 green:143.0/255 blue:203.0/255 alpha:1];
    [self.view addSubview:labelSeven];
    
    UILabel *labelFour = [[UILabel alloc]initWithFrame:CGRectMake(10, 144, 350, 20)];
    labelFour.text = @"多希望列车能把我带到有你的城市";
    [self.view addSubview:labelFour];

    UITableView *tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 164, 375,800)];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"cellId";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if(!cell){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle  reuseIdentifier:cellId];
    }
    for(int i = 1;i<5;i++){
    NSString *name = [NSString stringWithFormat:@"works_img%d",i];
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:name]];
        if (i == 1) {
            imageView.frame = CGRectMake(10, 40, 355, 200);
        }else if(i == 2){
             imageView.frame = CGRectMake(10, 245, 355, 200);
        }else{
            imageView.frame = CGRectMake(85, 125+325*(i-2), 200, 320);
        }
        [cell addSubview:imageView];
    }
    return cell;
}
- (void)back{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 1400;
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
