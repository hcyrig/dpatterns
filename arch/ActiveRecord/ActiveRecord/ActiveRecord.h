//
//  ActiveRecord.h
//  ActiveRecord
//
//  Created by hcyrig on 7/28/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

@interface ActiveRecord : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *surname;
@property (nonatomic, copy) NSString *lastname;

+ (ActiveRecord *)find:(NSInteger)key;
+ (ActiveRecord *)load:(NSData *)data;

- (void)update:(NSString *)name surname:(NSString *)surname lastname:(NSString *)lastname;
- (NSInteger)add;
- (void)remove;
- (void)someDomainLogic;
- (void)anyDomainLogic;

@end
