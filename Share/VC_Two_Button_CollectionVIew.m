//
//  VC_Two_Button_CollectionVIew.m
//  Share
//
//  Created by JACK on 2017/8/2.
//  Copyright © 2017年 JACK. All rights reserved.
//

#import "VC_Two_Button_CollectionVIew.h"
#import "MyCollectionViewCell.h"
#import "VC_Two_Button.h"
@interface VC_Two_Button_CollectionVIew ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>
{
    NSString *str;
}

@end

@implementation VC_Two_Button_CollectionVIew

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *buttonPlus = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonPlus.frame = CGRectMake(10, 25, 30, 20);
    [buttonPlus setImage:[UIImage imageNamed:@"back_img"] forState:UIControlStateNormal];
    [buttonPlus addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    
    UIView *imageView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 375, 64)];
    imageView.backgroundColor = [UIColor colorWithRed:53.0/255 green:143.0/255 blue:203.0/255 alpha:1];
    [self.view addSubview:imageView];
    [imageView addSubview:buttonPlus];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(40, 0, 100, 20)];
    label.textColor = [UIColor whiteColor];
    label.text = @"返回";
    [buttonPlus addSubview:label];
    UICollectionViewFlowLayout *layout =
    [[UICollectionViewFlowLayout alloc] init];
    
    UIButton *buttonOne = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonOne.frame = CGRectMake(310, 32, 50, 20);
    [buttonOne setTitle:@"上传" forState:UIControlStateNormal];
    buttonOne.layer.borderColor=[UIColor whiteColor].CGColor;
    buttonOne.backgroundColor = [UIColor clearColor];
    buttonOne.layer.cornerRadius=5;
    buttonOne.layer.masksToBounds=YES;
    [buttonOne.layer setBorderWidth:1.0];
    [buttonOne addTarget:self action:@selector(shangChuan) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttonOne];
    
    
    
    //    layout.itemSize = CGSizeMake(50, 50);
    layout.minimumLineSpacing = 1.5;
    layout.minimumInteritemSpacing = 1.5;
    layout.sectionInset = UIEdgeInsetsMake(1, 1, 0, 0);
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    
    UICollectionView *cv = [[UICollectionView alloc]
                            initWithFrame:CGRectMake(0, 64, 375, 736) collectionViewLayout:layout];
    [self.view addSubview:cv];
    cv.backgroundColor = [UIColor whiteColor];
    cv.delegate = self;
    cv.dataSource = self;
    
    [cv registerClass:[MyCollectionViewCell class]
forCellWithReuseIdentifier:@"cell"];
    [cv registerClass:[UICollectionReusableView class]
forSupplementaryViewOfKind:UICollectionElementKindSectionHeader
  withReuseIdentifier:@"header"];
    
    
}
- (void)shangChuan{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"提示" message:@"Are you sure to upload ？" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"No" style:UIAlertActionStyleCancel handler:nil];
    UIAlertAction *yesAction = [UIAlertAction actionWithTitle:@"Yes" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [self dismissViewControllerAnimated:YES completion:nil];
    }];
    [alertController addAction:cancelAction];
    [alertController addAction:yesAction];
    [self presentViewController:alertController animated:YES completion:nil];
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 18;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    MyCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
   
   
    if (indexPath.row == 1) {
        cell.imageView.image = [UIImage imageNamed:@"5498"];
    }else{
         cell.imageView.image = [UIImage imageNamed:@"3485783"];
    }
    return cell;
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
   MyCollectionViewCell *cell = (MyCollectionViewCell *)[collectionView cellForItemAtIndexPath:indexPath];
    if ([cell.is isEqualToValue:@YES]) {
        cell.imageView.image = [UIImage imageNamed:@"238427"];
        cell.is = @NO;
        if (indexPath.row == 1) {
            cell.imageView.image = [UIImage imageNamed:@"5498"];
            str = @"5498";
        }else{
            str = @"3784";
        }
           } else {
        cell.imageView.image = [UIImage imageNamed:@"3485783"];
        cell.is = @YES;
       if (indexPath.row == 1) {
       cell.imageView.image = [UIImage imageNamed:@"5488"];
               }

    }
}
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(123, 123);
}
- (void)touchLeft
{
    [self.navigationController popViewControllerAnimated:NO];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)back{
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(void)viewWillDisappear:(BOOL)animated{
    self.returnTextBlock(str);
}
-(void)returnText:(ReturnTextBlock)block{
    
    self.returnTextBlock = block;
    
}
@end

