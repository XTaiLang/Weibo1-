//
//  QYDetailStatusVC.m
//  Weibo
//
//  Created by qingyun on 16/5/28.
//  Copyright © 2016年 QingYun. All rights reserved.
//

#import "QYDetailStatusVC.h"
#import "QYStatusCell.h"
@interface QYDetailStatusVC ()
@property (nonatomic, strong) NSArray *showDatas;       //第一个section显示的数据
@end

@implementation QYDetailStatusVC
static NSString *statusCellIdentifier = @"statusCell";


- (void)viewDidLoad {
    [super viewDidLoad];
    //注册第0个section中的单元格
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([QYStatusCell class]) bundle:nil] forCellReuseIdentifier:statusCellIdentifier];
    
    self.tableView.estimatedRowHeight = 120;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return section ? self.showDatas.count : 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.section == 0) {
        QYStatusCell *statusCell = [tableView dequeueReusableCellWithIdentifier:statusCellIdentifier forIndexPath:indexPath];
        
        statusCell.statusModel = self.cellStatus;
        
        return statusCell;
    }
    
    // Configure the cell...
    
    return nil;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
