//
//  ViewController_Five_Four_Three.m
//  Share
//
//  Created by JACK on 2017/7/31.
//  Copyright © 2017年 JACK. All rights reserved.
//

#import "ViewController_Five_Four_Three.h"

@interface ViewController_Five_Four_Three ()

@end

@implementation ViewController_Five_Four_Three

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *buttonOne = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonOne.frame = CGRectMake(10, 25, 30, 20);
    [buttonOne setImage:[UIImage imageNamed:@"back_img"] forState:UIControlStateNormal];
    [buttonOne addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(40, 0, 100, 20)];
    label.textColor = [UIColor whiteColor];
    label.text = @"关于SHARE";
    [buttonOne addSubview:label];
    
    UIView *imageView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 375, 64)];
    imageView.backgroundColor = [UIColor colorWithRed:53.0/255 green:143.0/255 blue:203.0/255 alpha:1];
    [self.view addSubview:imageView];
    [imageView addSubview:buttonOne];
    
    UILabel *labelNew = [[UILabel alloc]initWithFrame:CGRectMake(20, 80, 335, 400)];
    labelNew.numberOfLines = 0;
    labelNew.text = @"       ゲートで流れているように後退を開いて、前に遡る、無数のスローを奪い合うほとばしっから目の前にして、果てない暗暗の中に、もくもくとから流れる歳月の中で、さらに盛り上がるに襲ってくる。私はずっと覚えていて私は第1目夏冰時の情景。その日、寮に入ると、彼女が長い髪と腰の後ろ姿が見えて。黒いサラサラ盤からかんざしから半分の髪の毛を斜めにを横切って、かんざし根元が横たわる4輪の両方がペアの白蓮華、見えない素材が、透き通ってきれいで、とても質感。白スカート、体つきはやせ細っすらり、古典的な美。";
    [self.view addSubview:labelNew];
// Do any additional setup after loading the view.
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
