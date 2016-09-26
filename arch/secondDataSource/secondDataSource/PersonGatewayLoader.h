//
//  PersonGatewayLoader.h
//  secondDataSource
//
//  Created by hcyrig on 7/27/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

@class PersonGateway;

@interface PersonGatewayLoader : NSObject

- (PersonGateway *)find:(NSString *)key;
- (PersonGateway *)load:(NSString *)results;
- (NSArray *)someSituation:(NSString *)situation;

@end
