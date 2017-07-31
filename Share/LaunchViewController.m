//
//  LaunchViewController.m
//  Share
//
//  Created by JACK on 2017/7/27.
//  Copyright © 2017年 JACK. All rights reserved.
//

#import "LaunchViewController.h"

@interface LaunchViewController ()

@end

@implementation LaunchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    NSString *name;
    NSMutableArray *array = [[NSMutableArray alloc]init];
    for (int i=1; i<=48; i++) {
        name = [NSString stringWithFormat:@"图层-%d",i];
        UIImage *image = [UIImage imageNamed:name];
        [array addObject:image];
    }
    imageView.animationImages = array;
    imageView.animationDuration = 2;
    imageView.animationRepeatCount = 1;
    [imageView startAnimating];
    [self.view addSubview:imageView];
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
