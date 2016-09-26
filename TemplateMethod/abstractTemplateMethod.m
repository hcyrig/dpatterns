//
//  abstractTemplateMethod.m
//  TemplateMethod
//
//  Created by hcyrig on 7/24/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "abstractTemplateMethod.h"

@implementation abstractTemplateMethod

static const NSString *abstractError = @"Realese abstract method";

static const NSString *classTitle = @"from class";

//general algoritm
- (void)genegalAlgoritm
{
	[self someHookOne];
	
	[self abstractMethodOne];
	[self notAbstractMethodOne];
	[self abstractMethodTwo];
	
	[self someHookTwo];

	if ([self someHookThree])
	{
		[self abstractMethodThree];
	}
	
	[self notAbstractMethodTwo];
}
//createNotAbstractMethods

- (void)notAbstractMethodOne
{
	NSLog(@"\nNot abstract method one\n");
}

- (void)notAbstractMethodTwo
{
	NSLog(@"\nNot abstract method two\n");
}

//create abstract methods
- (void)abstractMethodOne
{
	NSAssert(NO,@"%@ \"%@\" %@ \"%@\"",abstractError,NSStringFromSelector(_cmd),classTitle,NSStringFromClass([self class]));
}

- (void)abstractMethodTwo
{
	NSAssert(NO,@"%@ \"%@\" %@ \"%@\"",abstractError,NSStringFromSelector(_cmd),classTitle,NSStringFromClass([self class]));
}

- (void)abstractMethodThree
{
	NSAssert(NO,@"%@ \"%@\" %@ \"%@\"",abstractError,NSStringFromSelector(_cmd),classTitle,NSStringFromClass([self class]));
}

//hook methods
- (void)someHookOne
{

}

- (void)someHookTwo
{

}

- (BOOL)someHookThree
{
	return YES;
}

@end
