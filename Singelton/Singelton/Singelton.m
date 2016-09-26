//
//  Singelton.m
//  Singelton
//
//  Created by hcyrig on 7/26/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "Singelton.h"

@implementation Singelton

static Singelton *instance = nil;

+ (instancetype)instanceOne
{
	@synchronized(self)
	{
		if (instance == nil)
		{
			instance = [[self alloc]init];
		}
		
		return instance;
	}
}

+ (instancetype)instanceTwo
{
	static dispatch_once_t once_t;
	
	dispatch_once(&once_t,
				  ^{
					  instance = [[self alloc] init];
				  });
	
	return instance;
}

+ (instancetype)instanceThree
{
	if (instance == nil)
	{
		@synchronized(self)
		{
			if (instance == nil)
			{
				instance = [[self alloc]init];
			}
		}
	}
		
	return instance;
}

+ (instancetype)new
{
	NSAssert(NO,@"Singelton: +new method - access denied");
	
	return nil;
}

- (NSString *)someSingeltonMethod
{
	return [NSString stringWithFormat:@"Singelton method \"%@\" from class  \"%@\"",NSStringFromSelector(_cmd),NSStringFromClass([Singelton class])];
}

@end
