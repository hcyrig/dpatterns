//
//  Object.m
//  Observer
//
//  Created by hcyrig on 7/25/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "Object.h"

#import "ObserverObject.h"
#import "ObserverSubject.h"
#import "Subject.h"

@interface Object ()

@property (nonatomic, weak) Subject *subject;

@end

@implementation Object

- (instancetype)initWithSubject:(Subject *)tempSubjet
{
	self = [super init];
	
	if (self)
	{
		self.subject = tempSubjet;
	}

	return self;
}

- (void)setSubject:(Subject *)subject
{
	_subject = subject;

	[_subject addObserver:self];
}

- (void)update:(Subject *)subject userInfo:(id)object
{
	NSLog(@"%@",object);
}

- (void)dealloc
{
	[_subject deleteObserver:self];
	_subject = nil;
}

@end
