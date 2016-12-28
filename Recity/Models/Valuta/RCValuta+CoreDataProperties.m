//
//  RCValuta+CoreDataProperties.m
//  Idamob
//
//  Created by Artem Kulagin on 27.12.16.
//  Copyright © 2016 Recity. All rights reserved.
//

#import "RCValuta+CoreDataProperties.h"

@implementation RCValuta (CoreDataProperties)

+ (NSFetchRequest<RCValuta *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"RCValuta"];
}

@dynamic charCode;
@dynamic name;
@dynamic nominal;
@dynamic numCode;
@dynamic value;

@end
