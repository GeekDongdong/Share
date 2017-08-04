//
//  ViewControllerFive_Four.m
//  Share
//
//  Created by JACK on 2017/7/31.
//  Copyright © 2017年 JACK. All rights reserved.
//

#import "ViewControllerFive_Four.h"
#import "ViewController_Five_Four_Zero.h"
#import "ViewController_Five_Four_One.h"
#import "ViewController_Five_Four_Two.h"
#import "ViewController_Five_Four_Three.h"
@interface ViewControllerFive_Four ()<UITableViewDelegate,UITableViewDataSource>{
    UITableView *tableView;
    UIButton *button;
}

@end

@implementation ViewControllerFive_Four

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *buttonOne = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonOne.frame = CGRectMake(10, 25, 30, 20);
    [buttonOne setImage:[UIImage imageNamed:@"back_img"] forState:UIControlStateNormal];
    [buttonOne addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(40, 0, 50, 20)];
    label.textColor = [UIColor whiteColor];
    label.text = @"设置";
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
    NSArray *arrayNew = [NSArray arrayWithObjects:@"基本资料",@"修改密码",@"消息设置",@"关于SHARE",@"清除缓存",nil];
    if(indexPath.section == 0 ){
        
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(60, 18, 100, 8)];
        label.text = [arrayNew objectAtIndex:indexPath.row];
        [cell addSubview:label];
        
        
        button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(320, 15, 15, 15);
        [button setImage:[UIImage imageNamed:@"touch"]forState:UIControlStateNormal];
        [cell addSubview:button];
        
        if (indexPath.row == 0) {
            [button addTarget:self action:@selector(enterZero) forControlEvents:UIControlEventTouchUpInside];
        }else if(indexPath.row == 1){
            [button addTarget:self action:@selector(enterOne) forControlEvents:UIControlEventTouchUpInside];
        }else if(indexPath.row == 2){
            [button addTarget:self action:@selector(enterTwo) forControlEvents:UIControlEventTouchUpInside];
        }else if(indexPath.row == 3){
            [button addTarget:self action:@selector(enterThree) forControlEvents:UIControlEventTouchUpInside];
        }else if(indexPath.row == 4){
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
    ViewController_Five_Four_Zero *Zero = [[ViewController_Five_Four_Zero alloc]init];
    [self presentViewController:Zero animated:YES completion:nil];
}
- (void)enterOne{
    ViewController_Five_Four_One *One = [[ViewController_Five_Four_One alloc]init];
    [self presentViewController:One animated:YES completion:nil];
}
- (void)enterTwo{
    ViewController_Five_Four_Two *Two = [[ViewController_Five_Four_Two alloc]init];
    [self presentViewController:Two animated:YES completion:nil];
}
- (void)enterThree{
    ViewController_Five_Four_Three *Three = [[ViewController_Five_Four_Three alloc]init];
    [self presentViewController:Three animated:YES completion:nil];
}
- (void)enterFour{
    
    UIButton *buttonNew = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonNew.frame = CGRectMake(150, 300, 100, 40);
    [buttonNew setImage:[UIImage imageNamed:@"214141"] forState:UIControlStateNormal];
    [buttonNew setImage:[UIImage imageNamed:@"214141"] forState:UIControlStateSelected];
    buttonNew.tag = 13;
    [buttonNew addTarget:self action:@selector(tapMe) forControlEvents:UIControlEventTouchUpInside];
    
    //设置动画
    CATransition * transion = [CATransition animation];
    
    
    transion.type = @"push";//设置动画方式
    transion.subtype = @"fromRight";//设置动画从那个方向开始
    [buttonNew.layer addAnimation:transion forKey:nil];//给Label.layer 添加动画
    //设置延时效果
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)),dispatch_get_main_queue(),^{[buttonNew removeFromSuperview];
    });//这句话的意思是1.5秒后，把label移出视图
    
    [self.view addSubview:buttonNew];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)tapMe{
    for (UIView *subviews in [self.view subviews]) {
        if (subviews.tag==13) {
            [subviews removeFromSuperview];
        }
    }
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
