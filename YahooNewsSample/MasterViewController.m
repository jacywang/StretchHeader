//
//  MasterViewController.m
//  YahooNewsSample
//
//  Created by JIAN WANG on 6/9/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "News.h"
#import "CustomTableViewCell.h"

@interface MasterViewController ()

@property NSMutableArray *newsArray;

@end

@implementation MasterViewController

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    self.navigationItem.leftBarButtonItem = self.editButtonItem;

//    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
//    self.navigationItem.rightBarButtonItem = addButton;
    
    self.navigationController.navigationBarHidden = YES;
    
    News *asiaNews = [[News alloc] initWithCategory:@"Asia" andHeadline:@"Hong Kong issues 'red alert' against South Korea travel due to MERS"];
    News *usNews = [[News alloc] initWithCategory:@"USA" andHeadline:@"Texas pool party: Would a police body camera have made a difference?"];
    News *africaNews = [[News alloc] initWithCategory:@"Africa" andHeadline:@"Nigeria's legislature to be led by presidential opponents"];
    News *middleEastNews = [[News alloc] initWithCategory:@"Middle East" andHeadline:@"Syrian rebels capture army base in south: rebels, monitor"];
    News *europeEastNews = [[News alloc] initWithCategory:@"Europe" andHeadline:@"Romania MPs reject lifting premier's immunity for graft probe"];
    News *canadaNews = [[News alloc] initWithCategory:@"Canada" andHeadline:@"Parents urged to encourage freedom, play, as kids get D-minus for physical activity"];
    News *techNews = [[News alloc] initWithCategory:@"Technology" andHeadline:@"iOS 9: everything we know after WWDC 2015"];
    News *sportNews = [[News alloc] initWithCategory:@"Sport" andHeadline:@"FIFA Scandal: Argentinian Businessman Alejandro Burzaco Arrested in Italy"];
    
    self.newsArray = [NSMutableArray arrayWithArray:@[asiaNews, usNews, africaNews, middleEastNews, europeEastNews, canadaNews, techNews, sportNews]] ;
    
    self.tableView.estimatedRowHeight = 50;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [self.tableView reloadData];
}

-(BOOL)prefersStatusBarHidden {
    return YES;
}

#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSDate *object = self.newsArray[indexPath.row];
        [[segue destinationViewController] setDetailItem:object];
    }
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.newsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
     CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    News *news = self.newsArray[indexPath.row];
    [cell configure:news];
    
    return cell;
}

//- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
//    // Return NO if you do not want the specified item to be editable.
//    return YES;
//}

//- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
//    if (editingStyle == UITableViewCellEditingStyleDelete) {
//        [self.newsArray removeObjectAtIndex:indexPath.row];
//        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
//    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
//        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
//    }
//}

@end
