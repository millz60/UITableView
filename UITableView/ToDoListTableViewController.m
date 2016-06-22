//
//  ToDoListTableViewController.m
//  UITableView
//
//  Created by Matt Milner on 6/21/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import "ToDoListTableViewController.h"
#import "TaskTableViewCell.h"
#import "Task.h"

@interface ToDoListTableViewController ()

@end

@implementation ToDoListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    //_taskList = [NSMutableArray arrayWithObjects:@"Practice Coding",@"Eat Dinner",@"Play Video Games",@"Do Laundry",@"Watch USA Soccer Match", nil];
    
    
    
    Task *Laundry = [[Task alloc] init];
    Laundry.title = @"Do Laundry";
    
    Task *WatchSoccer = [[Task alloc] init];
    WatchSoccer.title = @"Watch USA vs. Argentina Game";
    
    Task *Coding = [[Task alloc] init];
    Coding.title = @"Practice Coding";
    
    Task *VideoGames = [[Task alloc] init];
    VideoGames.title = @"Play Video Games";
    
    Task *Dinner = [[Task alloc] init];
    Dinner.title = @"Eat Dinner";
    
    _taskList = [NSMutableArray arrayWithObjects: Laundry, WatchSoccer,Coding,VideoGames,Dinner,nil];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    return _taskList.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TaskTableViewCell *cell = (TaskTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"taskListID" forIndexPath:indexPath];
    
    // Configure the cell...
    
    NSInteger currentIndex = indexPath.row;
    
    Task *currentTask = [[Task alloc] init];
    currentTask = _taskList[currentIndex];
    
    cell.title.text = currentTask.title;
    
    return cell;
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
