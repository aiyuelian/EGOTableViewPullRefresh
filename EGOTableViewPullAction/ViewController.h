//
//  ViewController.h
//  EGOTableViewPullAction
//
//  Created by chenyu on 13-10-2.
//  Copyright (c) 2013年 zhao. All rights reserved.
//

#import "PullTableView.h"

@interface ViewController : UIViewController <UITableViewDataSource, PullTableViewDelegate,UITableViewDelegate>

@property (nonatomic, strong) PullTableView *pullTableView;

@end
