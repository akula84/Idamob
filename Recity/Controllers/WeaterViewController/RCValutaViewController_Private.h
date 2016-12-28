//
//  RCWeaterViewController_private.m
//  Ccsteam
//
//  Created by Artem Kulagin on 22.12.16.
//  Copyright © 2016 Recity. All rights reserved.
//
#import "RCValutaViewController.h"

@interface RCValutaViewController ()

@property (nonatomic, strong) NSFetchedResultsController *fetchedController;
/**
 *  send to Server http://www.cbr.ru/scripts/XML_daily.asp with parameters
 */

@end

@interface RCValutaViewController (FetchedController) <NSFetchedResultsControllerDelegate>

- (void)initFetch;

@end

@interface RCValutaViewController (TableView)

- (void)reloadData;

@end
