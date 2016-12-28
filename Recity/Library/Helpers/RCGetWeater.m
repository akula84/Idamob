//
//  TWCGetWeater.m
//  TestWorkCcsteam
//
//  Created by Artem Kulagin on 21.12.16.
//  Copyright © 2016 Artem Kulagin. All rights reserved.
//

#import "RCGetWeater.h"

#import "API_Protected.h"
#import "XMLDictionary.h"
#import "RCValuta+CoreDataProperties.h"

/**
 *  @return weater from name q http://api.openweathermap.org/data/2.5/weather
 */
@implementation RCGetWeater

- (NSString *)path
{
    return @"scripts/XML_daily.asp";
}

- (void)apiDidReturnReply:(id)reply source:(id)source
{
    NSDictionary *dict = [[XMLDictionaryParser sharedInstance] dictionaryWithData:(NSData *)reply];
    NSArray *valutaDict = dict[@"Valute"];
    if (valutaDict.isFull) {
        NSArray *array = [RCValuta MR_importFromArray:valutaDict];
        [super apiDidReturnReply:dict source:source];
    }
}

- (void)apiDidFailWithError:(NSError*)error
{
    NSLog(@"apiDidFailWithError %@",error)
    [super apiDidFailWithError:error];
}

@end
