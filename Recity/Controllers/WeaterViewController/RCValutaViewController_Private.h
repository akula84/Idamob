//
//  RCWeaterViewController_private.m
//  Ccsteam
//
//  Created by Artem Kulagin on 22.12.16.
//  Copyright © 2016 Recity. All rights reserved.
//
#import "RCValutaViewController.h"

@interface RCValutaViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *nameTitle;
@property (weak, nonatomic) IBOutlet UIImageView *iconImage;
@property (weak, nonatomic) IBOutlet UILabel *tempLabel;
@property (weak, nonatomic) IBOutlet UILabel *mainLabel;

/**
 *  send to Server http://www.cbr.ru/scripts/XML_daily.asp with parameters
 */
- (void)sendToServer;

@end
