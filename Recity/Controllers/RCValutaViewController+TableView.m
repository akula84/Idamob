//
//  RCValutaViewController+TableView.m
//  Idamob
//
//  Created by Artem Kulagin on 28.12.16.
//  Copyright © 2016 Recity. All rights reserved.
//

#import "RCValutaViewController_Private.h"

#import "RCValuteCell.h"

@implementation RCValutaViewController (TableView)

- (void)reloadData{
    [self.tableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return (NSInteger)self.fetchedController.fetchedObjects.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    RCValuteCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([RCValuteCell class]) forIndexPath:indexPath];
    [cell prepareItem:[self.fetchedController objectAtIndexPath:indexPath]];
    return cell;
}

@end
