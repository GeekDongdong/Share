//
//  ViewControllerFour.m
//  Share
//
//  Created by JACK on 2017/7/27.
//  Copyright © 2017年 JACK. All rights reserved.
//

#import "ViewControllerFour.h"

@interface ViewControllerFour ()

@end

@implementation ViewControllerFour

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone;
     self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *lable = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 50, 133)];
    lable.text = @"活动";
    lable.textColor = [UIColor whiteColor];
    lable.font = [UIFont systemFontOfSize:28];
    self.navigationItem.titleView = lable;
    
    NSString *name ;
    name = [NSString stringWithFormat:@"-1"];
    UIImageView *imageViewOne = [[UIImageView alloc]initWithImage:[UIImage imageNamed:name]];
    imageViewOne.frame = CGRectMake(8, 8, 359, 150);
    [self.view addSubview:imageViewOne];
    
    
    name = [NSString stringWithFormat:@"-2"];
    UIImageView *imageViewTwo = [[UIImageView alloc]initWithImage:[UIImage imageNamed:name]];
    imageViewTwo.frame = CGRectMake(8, 166, 359, 150);
    [self.view addSubview:imageViewTwo];
    
    name = [NSString stringWithFormat:@"-3"];
    UIImageView *imageViewThree = [[UIImageView alloc]initWithImage:[UIImage imageNamed:name]];
    imageViewThree.frame = CGRectMake(8, 324, 359, 150);
    [self.view addSubview:imageViewThree];
    
    
    

    // Do any additional setup after loading the view.
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
