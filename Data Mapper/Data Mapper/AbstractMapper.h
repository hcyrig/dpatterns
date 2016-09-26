//
//  AbstractMapper.h
//  Data Mapper
//
//  Created by hcyrig on 7/31/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

@interface AbstractMapper : NSObject

- (id)find:(NSString *)query idObject:(NSInteger)idObject;
- (void)remove:(NSString *)query idObject:(NSInteger)idObject;
- (NSInteger)insert:(NSString *)query insertStatment:(id)object;
- (void)update:(NSString *)query updateStatment:(id)object;

// methods that will release
- (id)loadIdObject:(NSInteger)idObject results:(id)results;

@end
