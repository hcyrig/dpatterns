//
//  Subject.m
//  Proxy
//
//  Created by hcyrig on 8/12/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "Subject.h"

@interface Subject ()
{
	NSString *_name;
}

@end

@implementation Subject

- (void)someMethodOne
{
	NSLog(@"\n%@ %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

- (void)someMethodTwo
{
	NSLog(@"\n%@ %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

- (void)someMethodThree
{
	NSLog(@"\n%@ %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

- (void)setName:(NSString *)name
{
	NSLog(@"\n%@ %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));

	_name = [name copy];
}

- (NSString *)name
{
	NSLog(@"\n%@ %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
	return _name;
}

@end