//
//  RCWeaterViewController.m
//  Ccsteam
//
//  Created by Artem Kulagin on 22.12.16.
//  Copyright © 2016 Recity. All rights reserved.
//

#import "RCValutaViewController.h"
#import "RCValutaViewController_Private.h"

#import "RCGetValuta.h"

@interface RCValutaViewController ()

@end

@implementation RCValutaViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self sendToServer];
}

- (void)sendToServer{
    __weak __typeof__(self) weakSelf = self;
    [RCGetValuta withCompletion:^(id reply, NSError *error, BOOL *handleError) {
        __strong __typeof__(weakSelf) strongSelf = weakSelf;
        [strongSelf.refreshControl endRefreshing];
        NSLog(@"reply %@",reply)
    }];
}

- (IBAction)refreshAction:(id)sender {
    [self sendToServer];
}

+ (NSString *)storyboardName {
    return @"RCValutaViewController";
}

@end
