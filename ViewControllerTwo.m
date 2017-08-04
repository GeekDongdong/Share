//
//  ViewControllerTwo.m
//  Share
//
//  Created by JACK on 2017/7/27.
//  Copyright © 2017年 JACK. All rights reserved.
//

#import "ViewControllerTwo.h"
#import "VC_Two_Button.h"
#import "SearchbarResult.h"
@interface ViewControllerTwo ()<UISearchBarDelegate,UISearchResultsUpdating,UITableViewDataSource,UITableViewDelegate>{
    UIButton *button;
    UITableView* tableView;
    // 保存原始表格数据的NSArray对象。
    NSArray * tableData;
    // 保存搜索结果数据的NSArray对象。
    NSArray* searchData;
    // 是否搜索变量
    bool isSearch;
}

@end

@implementation ViewControllerTwo

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.view.backgroundColor = [UIColor colorWithRed:238.0/255 green:238.0/255 blue:238.0/255 alpha:1];
    
    UILabel *lable = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 50, 133)];
    lable.text = @"搜索";
    lable.textColor = [UIColor whiteColor];
    lable.font = [UIFont systemFontOfSize:28];
    self.navigationItem.titleView = lable;
    
    UIBarButtonItem *buttonItem = [[UIBarButtonItem alloc]initWithImage:[[UIImage imageNamed:@"wdw"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]  style:UIBarButtonItemStyleDone target:self action:@selector(enter)];
    self.navigationItem.rightBarButtonItem = buttonItem;
    
//    
//    UITextField *textField = [[UITextField alloc]initWithFrame:CGRectMake(10, 10, 355, 40)];
//    textField.backgroundColor=[UIColor whiteColor];
//    textField.layer.cornerRadius=5;
//    textField.layer.masksToBounds=YES;
//    [self.view addSubview:textField];
    // 默认没有开始搜索
    isSearch = NO;
    // 初始化原始表格数据
    tableData = [NSArray arrayWithObjects:@"大白",
               nil ];
    
    // 创建UISearchBar对象
    UISearchBar* searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 50, 100, 60)];
    
    // 设置Prompt提示
    // 设置没有输入时的提示占位符
    [searchBar setPlaceholder:@"搜索 用户名 作品分类 文章"];
    // 显示Cancel按钮
    searchBar.showsCancelButton = true;
    // 设置代理
    searchBar.delegate = self;
    
    // 创建UITableView
    tableView = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStyleGrouped];
    // 设置代理
    tableView.dataSource = self;
    
    //设置 searchBar 为 table 的头部视图
    tableView.tableHeaderView = searchBar;
    // 添加UITableView
    [self.view addSubview:tableView];
    
//    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"3131"]];
//    imageView.frame = CGRectMake(10, 6, 35, 35);
//    [textField addSubview:imageView];

    
    
//    _tableView = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
//    _tableView.delegate = self;
//    _tableView.dataSource = self;
//    [self.view addSubview:_tableView];
//    self.view.backgroundColor = [UIColor clearColor];


    UIImageView *imageViewTwo = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"31314"]];
    imageViewTwo.frame = CGRectMake(10, 80, 355, 35);
    [self.view addSubview:imageViewTwo];

    NSArray *array = [NSArray arrayWithObjects:@"平面设计",@"网页设计",@"UI/icon",@"插画／手绘", nil];
    for(int i=0;i<4;i++){
    button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(10+i*91, 130, 81, 25);
        button.backgroundColor = [UIColor whiteColor];
    [button setTitle:[array objectAtIndex:i] forState:UIControlStateNormal];
        button.titleLabel.font = [UIFont systemFontOfSize:13];
        [button setBackgroundImage:[UIImage imageNamed:@"background_main"] forState:UIControlStateSelected];
        [button setTitle:[array  objectAtIndex:i] forState:UIControlStateSelected];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
         [button addTarget:self action:@selector(touch:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
    }
    
    NSArray *arrayTwo = [NSArray arrayWithObjects:@"虚拟与设计", @"影视",@"摄影",@"其他",nil];
    for(int i=0;i<4;i++){
        button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(10+i*91, 170, 81, 25);
        button.backgroundColor = [UIColor whiteColor];
        [button setTitle:[arrayTwo objectAtIndex:i] forState:UIControlStateNormal];
        [button setBackgroundImage:[UIImage imageNamed:@"background_main"] forState:UIControlStateSelected];
        [button setTitle:[arrayTwo objectAtIndex:i] forState:UIControlStateSelected];
        button.titleLabel.font = [UIFont systemFontOfSize:13];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
         [button addTarget:self action:@selector(touch:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
    }
    
        UIImageView *imageViewThree = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"41412"]];
        imageViewThree.frame = CGRectMake(10, 200, 355, 35);
        [self.view addSubview:imageViewThree];

        
        NSArray *arrayThree = [NSArray arrayWithObjects:@"人气最高",@"收藏最多",@"评论最多",@"编辑精选",nil];
        for(int i=0;i<4;i++){
            button = [UIButton buttonWithType:UIButtonTypeCustom];
            button.frame = CGRectMake(10+i*91, 250, 81, 25);
            button.backgroundColor = [UIColor whiteColor];
            [button setTitle:[arrayThree objectAtIndex:i] forState:UIControlStateNormal];
            [button setBackgroundImage:[UIImage imageNamed:@"background_main"] forState:UIControlStateSelected];
            [button setTitle:[arrayThree objectAtIndex:i] forState:UIControlStateSelected];
             [button addTarget:self action:@selector(touch:) forControlEvents:UIControlEventTouchUpInside];
            button.titleLabel.font = [UIFont systemFontOfSize:13];
            [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            [self.view addSubview:button];
    }
        UIImageView *imageViewFour = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"4114"]];
        imageViewFour.frame = CGRectMake(10, 280, 355, 35);
        [self.view addSubview:imageViewFour];
        
        
        NSArray *arrayFour = [NSArray arrayWithObjects:@"30分钟前",@"1小时前",@"1月前",@"1年前",nil];
        for(int i=0;i<4;i++){
            button = [UIButton buttonWithType:UIButtonTypeCustom];
            button.frame = CGRectMake(10+i*91, 330, 81, 25);
            button.backgroundColor = [UIColor whiteColor];
            [button setTitle:[arrayFour objectAtIndex:i] forState:UIControlStateNormal];
            [button setBackgroundImage:[UIImage imageNamed:@"background_main"] forState:UIControlStateSelected];
            [button setTitle:[arrayFour objectAtIndex:i] forState:UIControlStateSelected];
            [button setTitleColor:[UIColor blackColor] forState:UIControlStateSelected];
            button.titleLabel.font = [UIFont systemFontOfSize:13];
            
            [button addTarget:self action:@selector(touch:) forControlEvents:UIControlEventTouchUpInside];
            [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            [self.view addSubview:button];
        }

    }

    // Do any additional setup after loading the view.
- (void)enter{
    VC_Two_Button *vc = [[VC_Two_Button alloc]init];
    [self presentViewController:vc animated:YES completion:nil];
}
- (void)touch:(UIButton *)sender{
    sender.selected = !sender.selected;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//searchController
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    // 如果处于搜索状态
    if(isSearch)
    {
        // 使用searchData作为表格显示的数据
        return searchData.count;
    }
    else
    {
        // 否则使用原始的tableData座位表格显示的数据
        return 0;
    }
}

- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString* cellId = @"cellId";
    // 从可重用的表格行队列中获取表格行
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    // 如果表格行为nil
    if(!cell)
    {
        // 创建表格行
        cell = [[UITableViewCell alloc] initWithStyle:
                UITableViewCellStyleDefault
                                      reuseIdentifier:cellId];
    }
    // 获取当前正在处理的表格行的行号
    NSInteger rowNo = indexPath.row;
    // 如果处于搜索状态
    if(isSearch)
    {
        // 使用searchData作为表格显示的数据
        cell.textLabel.text = [searchData objectAtIndex:rowNo];
    }
    else{
        // 否则使用原始的tableData作为表格显示的数据
        //cell.textLabel.text = [tableData objectAtIndex:rowNo];
    }
    return cell;
}

#pragma mark - UISearchBarDelegate

// UISearchBarDelegate定义的方法，用户单击取消按钮时激发该方法
- (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar
{
    // 取消搜索状态
    isSearch = NO;
    [tableView reloadData];
}

// UISearchBarDelegate定义的方法，当搜索文本框内文本改变时激发该方法
- (void)searchBar:(UISearchBar *)searchBar
    textDidChange:(NSString *)searchText
{

    // 调用filterBySubstring:方法执行搜索
    [self filterBySubstring:searchText];
}

// UISearchBarDelegate定义的方法，用户单击虚拟键盘上Search按键时激发该方法
- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    // 调用filterBySubstring:方法执行搜索
    [self filterBySubstring:searchBar.text];
    // 放弃作为第一个响应者，关闭键盘
    [searchBar resignFirstResponder];
    if([searchBar.text  isEqual: @"Dabai"]){
        SearchbarResult *result = [[SearchbarResult alloc]init];
        [self presentViewController:result animated:NO completion:nil];
    }
}

- (void) filterBySubstring:(NSString*) subStr
{
    // 设置为搜索状态
    isSearch = YES;
    // 定义搜索谓词
    NSPredicate* pred = [NSPredicate predicateWithFormat:
                         @"SELF CONTAINS[c] %@" , subStr];
    // 使用谓词过滤NSArray
    searchData = [tableData filteredArrayUsingPredicate:pred];
    // 让表格控件重新加载数据
    [tableView reloadData];
}

@end
