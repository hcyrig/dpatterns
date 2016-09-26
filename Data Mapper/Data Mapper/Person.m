//
//  Person.m
//  Data Mapper
//
//  Created by hcyrig on 7/31/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "Person.h"

@interface Person ()
{
	id somePriveteParametr;
}

@end

@implementation Person

- (void)someMethod:(id)someParametr
{
	NSLog(@"\nSome perfome in %@\n",NSStringFromSelector(_cmd));
}

- (void)setSomePrivateParametr:(id)parametr
{
	somePriveteParametr = parametr;
}

- (id)somePersonParametr
{
	return somePriveteParametr;
}

@end
