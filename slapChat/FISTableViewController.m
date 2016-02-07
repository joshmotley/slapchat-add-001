//
//  FISTableViewController.m
//  slapChat
//
//  Created by Joe Burgess on 6/27/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISTableViewController.h"
#import "FISDataStore.h"
#import "FISMessage.h"

@interface FISTableViewController ()
@property (strong,nonatomic) NSArray *messagesArray;
@property (strong,nonatomic) FISDataStore *dataStore;

@end

@implementation FISTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.dataStore = [FISDataStore sharedDataStore];
    [self.dataStore fetchData];
    self.messagesArray = self.dataStore.messages;
    
    if (self.messagesArray == nil) {
        [self.dataStore generateTestData];
        self.messagesArray = self.dataStore.messages;
        NSLog(@"%@", self.messagesArray);
    }
    
    NSLog(@"%@", [self.messagesArray[0] content]);


    
}



#pragma mark - Table view data source

//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//    // Return the number of rows in the section.
//}

//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#reuseIdentifier#> forIndexPath:indexPath];
//
//    // Configure the cell...
//    
//    return cell;
//}

@end
