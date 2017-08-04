//
//  Five_One_Three_Zero.m
//  Share
//
//  Created by JACK on 2017/8/1.
//  Copyright © 2017年 JACK. All rights reserved.
//

#import "Five_One_Three_Zero.h"
#import "MKJInputView.h"
#import "MKJChatModel.h"
#import "MKJChatTableViewCell.h"
@interface Five_One_Three_Zero() <UITableViewDataSource,UITableViewDelegate,UITextFieldDelegate>
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) NSMutableArray *dataSouce;
@property (nonatomic,strong) MKJInputView *inputView;

@end

static NSString *identify = @"MKJChatTableViewCell";

@implementation Five_One_Three_Zero

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *buttonOne = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonOne.frame = CGRectMake(10, 25, 30, 20);
    [buttonOne setImage:[UIImage imageNamed:@"back_img"] forState:UIControlStateNormal];
    [buttonOne addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];

    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(40, 0, 100, 20)];
    label.textColor = [UIColor whiteColor];
    label.text = @"share小兰";
    [buttonOne addSubview:label];
    
    UIView *imageView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 375, 64)];
    imageView.backgroundColor = [UIColor colorWithRed:53.0/255 green:143.0/255 blue:203.0/255 alpha:1];
    [self.view addSubview:imageView];
    [imageView addSubview:buttonOne];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, 375, 667 - 64 - 30) style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.view addSubview:self.tableView];
    [self.tableView registerClass:[MKJChatTableViewCell class] forCellReuseIdentifier:identify];
    
    // 小技巧，用了之后不会出现多余的Cell
    UIView *view = [[UIView alloc] init];
    self.tableView.tableFooterView = view;
    
    // 底部输入栏
    self.inputView = [[MKJInputView alloc] initWithFrame:CGRectMake(0, 667 - 30, 375, 30)];
    self.inputView.backgroundColor = [UIColor whiteColor];
    self.inputView.textField.delegate = self;
    [self.inputView.button addTarget:self action:@selector(clickSengMsg:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.inputView];
    
    // 注册键盘的通知hide or show
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyBoardShow:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardHide:) name:UIKeyboardWillHideNotification object:nil];
    
    // 增加手势，点击弹回
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(click:)];
    [self.view addGestureRecognizer:tap];
    
}
-(void)back{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)click:(UITapGestureRecognizer *)tap
{
    [self.view endEditing:YES];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.view endEditing:YES];
    return YES;
}
// 监听键盘弹出
- (void)keyBoardShow:(NSNotification *)noti
{
    // 获取到的Noti信息是这样的
    //    NSConcreteNotification 0x7fde0a598bd0 {name = UIKeyboardWillShowNotification; userInfo = {
    //        UIKeyboardAnimationCurveUserInfoKey = 7;
    //        UIKeyboardAnimationDurationUserInfoKey = "0.25";
    //        UIKeyboardBoundsUserInfoKey = "NSRect: {{0, 0}, {375, 258}}";
    //        UIKeyboardCenterBeginUserInfoKey = "NSPoint: {187.5, 796}";
    //        UIKeyboardCenterEndUserInfoKey = "NSPoint: {187.5, 538}";
    //        UIKeyboardFrameBeginUserInfoKey = "NSRect: {{0, 667}, {375, 258}}";
    //        UIKeyboardFrameEndUserInfoKey = "NSRect: {{0, 409}, {375, 258}}";      就是他
    //        UIKeyboardIsLocalUserInfoKey = 1;
    //    }}
    // 咱们取自己需要的就好了
    CGRect rec = [noti.userInfo[UIKeyboardFrameEndUserInfoKey] CGRectValue];
    NSLog(@"%@",NSStringFromCGRect(rec));
    // 小于，说明覆盖了输入框
    if ([UIScreen mainScreen].bounds.size.height - rec.size.height < self.inputView.frame.origin.y + self.inputView.frame.size.height)
    {
        // 把我们整体的View往上移动
        CGRect tempRec = self.view.frame;
        tempRec.origin.y = - (rec.size.height);
        self.view.frame = tempRec;
    }
    // 由于可见的界面缩小了，TableView也要跟着变化Frame
    self.tableView.frame = CGRectMake(0, rec.size.height+64, 375, 667 - 64 - rec.size.height - 30);
    if (self.dataSouce.count != 0)
    {
        [self.tableView scrollToRowAtIndexPath:[NSIndexPath indexPathForRow:self.dataSouce.count - 1 inSection:0] atScrollPosition:UITableViewScrollPositionBottom animated:YES];
    }
    
    
}
// 监听键盘隐藏
- (void)keyboardHide:(NSNotification *)noti
{
    self.view.frame = CGRectMake(0, 0, 375, 667);
    self.tableView.frame = CGRectMake(0, 64, 375, 667 - 64 - 30);
}

- (void)clickSengMsg:(UIButton *)btn
{
    if (![self.inputView.textField.text isEqualToString:@""])
    {
        MKJChatModel *chatModel = [[MKJChatModel alloc] init];
        chatModel.msg = self.inputView.textField.text;
        chatModel.isRight = arc4random() % 2; // 0 or 1
        [self.dataSouce addObject:chatModel];
    }
    [self.tableView reloadData];
    // 滚到底部  scroll so row of interest is completely visible at top/center/bottom of view
    if (self.dataSouce.count != 0) {
        [self.tableView scrollToRowAtIndexPath:[NSIndexPath indexPathForRow:self.dataSouce.count - 1 inSection:0] atScrollPosition:UITableViewScrollPositionBottom animated:YES];
    }
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataSouce.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MKJChatTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    [cell refreshCell:self.dataSouce[indexPath.row]];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MKJChatModel *model = self.dataSouce[indexPath.row];
    CGRect rec =  [model.msg boundingRectWithSize:CGSizeMake(200, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:17]} context:nil];
    return rec.size.height + 45;
    
}

- (NSMutableArray *)dataSouce
{
    if (_dataSouce == nil) {
        _dataSouce = [[NSMutableArray alloc] init];
    }
    return _dataSouce;
}


@end
