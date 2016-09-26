//
//  Registry.m
//  secondDataSource
//
//  Created by hcyrig on 7/27/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "Registry.h"

#import "IdentityPersonMap.h"

@implementation Registry

+ (NSInteger)addPerson:(PersonGateway *)personGateway
{
	return [IdentityPersonMap addPerson:personGateway];
}

+ (PersonGateway *)getPersonGateWay:(NSInteger)key
{
	return [IdentityPersonMap getPerson:key];
}

@end

