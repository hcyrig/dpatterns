//
//  Subject.m
//  Observer
//
//  Created by hcyrig on 7/25/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "Subject.h"

#import "ObserverSubject.h"
#import "ObserverObject.h"

@interface Subject ()
{
	NSMutableArray *objects;
	
	NSString *state;

	BOOL isChanged;
}

@end

@implementation Subject

- (instancetype)init
{
	self = [super init];

	if (self)
	{
		isChanged = NO;
	}

	return self;
}

- (void)addObserver:(id<ObserverObject>)object
{
	[[self objects] addObject:object];
}

- (void)deleteObserver:(id<ObserverObject>)object
{
	[[self objects] removeObject:object];
}

- (NSMutableArray *)objects
{
	if(!objects)
	{
		objects = [[NSMutableArray alloc]init];
	}
	
	return objects;
}

- (NSString *)state
{
	if (!state)
	{
		state = [NSString stringWithFormat:@"%@",NSStringFromSelector(_cmd)];
	}

	return state;
}

- (void)notify
{
	if (isChanged)
	{
		isChanged = NO;
		
		[[self objects] enumerateObjectsUsingBlock:^(id object,NSUInteger idx,BOOL *stor){
			
			id<ObserverObject> someObject = (id<ObserverObject>)object;
			
			[someObject update:self userInfo:[NSString stringWithFormat:@"%@ for object %d",[self state],idx]];
		}];
	}
}

- (void)stateChanged
{
	isChanged = YES;
	
	[self notify];
}

- (void)dealloc
{
	[objects removeAllObjects];
	objects = nil;
}

@end
