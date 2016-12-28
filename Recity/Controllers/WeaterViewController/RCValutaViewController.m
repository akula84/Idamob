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
    [RCGetValuta withCompletion:^(id reply, NSError *error, BOOL *handleError) {
       NSLog(@"reply %@",reply)
    }];
}


+ (NSString *)storyboardName {
    return @"RCValutaViewController";
}

@end
