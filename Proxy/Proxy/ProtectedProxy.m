//
//  ProtectedProxy.m
//  Proxy
//
//  Created by hcyrig on 8/12/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "ProtectedProxy.h"

#import "Subject.h"

@interface ProtectedProxy ()
{
	Subject *_subject;
}

@end

@implementation ProtectedProxy

- (instancetype)initSubject:(Subject *)subject
{
	NSParameterAssert(subject);
	
	_subject = subject;

	return self;
}

- (void)forwardInvocation:(NSInvocation *)invocation
{
    NSString *selectorString = NSStringFromSelector(invocation.selector);

	if ([selectorString isEqualToString:@"someMethodOne"])
	{
		NSException *exeption = [NSException exceptionWithName:@"Protection - " reason:@"Object hasn't permissions with method" userInfo:nil];
		
		@throw exeption;
	}
	
	[invocation setTarget:_subject];
	
	[invocation invoke];
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel
{
	return [_subject methodSignatureForSelector:sel];
}

@end
