//
//  RCValuteCell.m
//  Idamob
//
//  Created by Artem Kulagin on 28.12.16.
//  Copyright © 2016 Recity. All rights reserved.
//

#import "RCValuteCell.h"

#import "RCValuta+CoreDataClass.h"

@implementation RCValuteCell

- (void)prepareItem:(RCValuta *)item{
    self.textLabel.text = item.name;
    self.detailTextLabel.text = [NSString stringWithFormat:@"%@ рублей за %@",item.value,item.nominal];
}

@end
