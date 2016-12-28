//
//  TWCGetWeater.m
//  TestWorkCcsteam
//
//  Created by Artem Kulagin on 21.12.16.
//  Copyright © 2016 Artem Kulagin. All rights reserved.
//

#import "RCGetValuta.h"

#import "API_Protected.h"
#import "XMLDictionary.h"
#import "RCValuta+CoreDataProperties.h"

/**
 *  @return scripts/XML_daily.asp
 */
@implementation RCGetValuta

- (NSString *)path{
    return @"scripts/XML_daily.asp";
}

- (void)apiDidReturnReply:(id)reply source:(id)source
{
    NSDictionary *dict = [[XMLDictionaryParser sharedInstance] dictionaryWithData:(NSData *)reply];
    NSArray *valutaDict = dict[@"Valute"];
    if (valutaDict.isFull) {
        NSArray *array = [RCValuta MR_importFromArray:valutaDict];
        [super apiDidReturnReply:array source:source];
    } else {
        [super apiDidReturnReply:nil source:source];
    }
}

@end
