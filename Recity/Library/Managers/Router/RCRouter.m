//
//  RCRouter.m
//  Ccsteam
//
//  Created by Artem Kulagin on 22.12.16.
//  Copyright © 2016 Recity. All rights reserved.
//

#import "RCRouter.h"

#import "RCValutaViewController.h"

@implementation RCRouter

+ (void)showValuta{
    UIViewController *vc = [RCValutaViewController initialController];
    [self setRootViewController:vc];
}

+ (void)setRootViewController:(UIViewController *)vc{
    [[UIApplication sharedApplication].delegate window].rootViewController = vc;
}

@end
