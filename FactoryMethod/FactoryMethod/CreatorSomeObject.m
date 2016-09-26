//
//  CreatorSomeObject.m
//  FactoryMethod
//
//  Created by hcyrig on 7/26/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "CreatorSomeObject.h"

#import "someObject.h"
#import "secondSomeObject.h"

@implementation CreatorSomeObject

- (Object *)factoryMethod:(NSString *)type
{
	Object *object = nil;
	
	if ([type isEqualToString:@"some"])
	{
		object = [[someObject alloc]init];
	}
	else
	{
		object = [[secondSomeObject alloc]init];
	}
	
	return object;
}

@end
