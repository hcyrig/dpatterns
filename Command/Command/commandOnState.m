//
//  concreteCommand.m
//  Command
//
//  Created by hcyrig on 8/8/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "commandOnState.h"

#import "Command.h"
#import "concreateObject.h"

@interface commandOnState ()

@property (nonatomic ,strong) concreateObject *object;

@end

@implementation commandOnState

- (instancetype)init:(concreateObject *)object
{
	self = [super init];
	
	if (self)
	{
		self.object  = object;
	}

	return self;
}

- (void)execute
{
	[self.object onState];
}

- (void)undo
{
	[self.object offState];
}

- (void)load
{
	//load command from target repository and execute it before some crash of enviroment
}

- (void)store
{
	//save command state to disk or target repository in fact crash application
}

- (id<Command>)perfomeCopy
{
	return [self copy];
}

- (id)copyWithZone:(NSZone *)zone
{
	commandOnState *copy = [[[self class] allocWithZone:zone] init:self.object];
	
	return copy;
}

@end
