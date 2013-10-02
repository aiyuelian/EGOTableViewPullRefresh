//
//  ViewController.m
//  EGOTableViewPullAction
//
//  Created by chenyu on 13-10-2.
//  Copyright (c) 2013年 zhao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated
{
    
    [super viewWillAppear:animated];
    if(!self.pullTableView.pullTableIsRefreshing) {
        self.pullTableView.pullTableIsRefreshing = YES;
        [self performSelector:@selector(refreshTable) withObject:nil afterDelay:3.0f];
    }
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	PullTableView *tableView = [[PullTableView alloc]initWithFrame:CGRectMake(0, 0, 320, 480)];
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.pullDelegate = self;
    self.pullTableView = tableView;
    
    self.pullTableView.pullArrowImage = [UIImage imageNamed:@"blackArrow"];
    self.pullTableView.pullBackgroundColor = [UIColor yellowColor];
    self.pullTableView.pullTextColor = [UIColor blackColor];
    
    [self.view addSubview:self.pullTableView];
}

#pragma mark - TableViewDelegate

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *identifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if(cell == nil)
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    cell.textLabel.text = @"haha";
    return cell;
}
#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 10;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) refreshTable
{
    /*
     
     Code to actually refresh goes here.
     
     */
    self.pullTableView.pullLastRefreshDate = [NSDate date];
    self.pullTableView.pullTableIsRefreshing = NO;
}

- (void) loadMoreDataToTable
{
    /*
     
     Code to actually load more data goes here.
     
     */
    self.pullTableView.pullTableIsLoadingMore = NO;
}

- (void)pullTableViewDidTriggerRefresh:(PullTableView *)pullTableView
{
    [self performSelector:@selector(refreshTable) withObject:nil afterDelay:3.0f];
}

- (void)pullTableViewDidTriggerLoadMore:(PullTableView *)pullTableView
{
    [self performSelector:@selector(loadMoreDataToTable) withObject:nil afterDelay:3.0f];
}

@end
