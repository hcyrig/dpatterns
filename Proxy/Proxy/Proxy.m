//
//  Proxy.m
//  Proxy
//
//  Created by hcyrig on 8/12/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "Proxy.h"

#import "Subject.h"

@interface Proxy ()

@property (nonatomic, strong) id <Iterface> subject;

@end

@implementation Proxy

- (id<Iterface>)subject
{
	if (!_subject)
	{
		_subject = [[Subject alloc]init];
	}

	return _subject;
}

- (void)someMethodOne
{
	[[self subject] someMethodOne];
}

- (void)someMethodTwo
{
	[[self subject] someMethodTwo];
}

- (void)someMethodThree
{
	[[self subject] someMethodThree];
}

- (NSString *)name
{
	return [[self subject] name];
}

- (void)setName:(NSString *)name
{
	[[self subject] setName:name];
}

@end
