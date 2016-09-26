//
//  CreatorAnyObject.m
//  FactoryMethod
//
//  Created by hcyrig on 7/26/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "CreatorAnyObject.h"

#import "anyObject.h"

#import "secondAnyObject.h"

@implementation CreatorAnyObject

- (Object *)factoryMethod:(NSString *)type
{
	Object *object = nil;
	
	if ([type isEqualToString:@"any"])
	{
		object = [[anyObject alloc]init];
	}
	else
	{
		object = [[secondAnyObject alloc]init];
	}
	
	return object;
}

@end
