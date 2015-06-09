//
//  MasterViewController.m
//  YahooNewsSample
//
//  Created by JIAN WANG on 6/9/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "NewsItem.h"
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
    self.dateLabel.text = [self getCurrentDateString];
    
    NewsItem *news1 = [[NewsItem alloc] initWithCategory:0 andHeadline:@"Climate change protests, divestments meet fossil fuels realities"];
    NewsItem *news2 = [[NewsItem alloc] initWithCategory:2 andHeadline:@"Scotland's 'Yes' leader says independence vote is 'once in a lifetime'"];
    NewsItem *news3 = [[NewsItem alloc] initWithCategory:3 andHeadline:@"summary: \"Airstrikes boost Islamic State, FBI director warns more hostages possible\""];
    NewsItem *news4 = [[NewsItem alloc] initWithCategory:4 andHeadline:@"Nigeria says 70 dead in building collapse; questions S. Africa victim claim"];
    NewsItem *news5 = [[NewsItem alloc] initWithCategory:5 andHeadline:@"Despite UN ruling, Japan seeks backing for whale hunting"];
    NewsItem *news6 = [[NewsItem alloc] initWithCategory:1 andHeadline:@"Officials: FBI is tracking 100 Americans who fought alongside IS in Syria"];
    NewsItem *news7 = [[NewsItem alloc] initWithCategory:0 andHeadline:@"South Africa in $40 billion deal for Russian nuclear reactors"];
    NewsItem *news8 = [[NewsItem alloc] initWithCategory:2 andHeadline:@"'One million babies' created by EU student exchanges"];
    
    self.newsArray = [NSMutableArray arrayWithArray:@[news1, news2, news3, news4, news5, news6, news7, news8]] ;
    
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

-(NSString *)getCurrentDateString {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"MMMM d"];
    return [formatter stringFromDate:[NSDate date]];
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

    NewsItem *news = self.newsArray[indexPath.row];
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
