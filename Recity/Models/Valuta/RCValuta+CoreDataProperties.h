//
//  RCValuta+CoreDataProperties.h
//  Idamob
//
//  Created by Artem Kulagin on 27.12.16.
//  Copyright © 2016 Recity. All rights reserved.
//

#import "RCValuta+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface RCValuta (CoreDataProperties)

+ (NSFetchRequest<RCValuta *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *charCode;
@property (nullable, nonatomic, copy) NSString *name;
@property (nullable, nonatomic, copy) NSString *nominal;
@property (nullable, nonatomic, copy) NSString *numCode;
@property (nullable, nonatomic, copy) NSString *value;

@end

NS_ASSUME_NONNULL_END
