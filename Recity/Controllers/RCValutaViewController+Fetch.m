//
//  RCValutaViewController+FetchedController.m
//  Idamob
//
//  Created by Artem Kulagin on 28.12.16.
//  Copyright © 2016 Recity. All rights reserved.
//

#import "RCValutaViewController_Private.h"

#import "RCValuta+CoreDataClass.h"

@implementation RCValutaViewController (FetchedController)

- (void)initFetch{
    self.fetchedController = [RCValuta MR_fetchAllSortedBy:@"uid" ascending:YES withPredicate:nil groupBy:nil delegate:self];
}

- (void)controllerDidChangeContent:(NSFetchedResultsController *)controller{
    [self reloadData];
}

@end
