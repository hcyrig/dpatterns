//
//  commandNo.m
//  Command
//
//  Created by hcyrig on 8/8/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "commandNo.h"

#import "Command.h"

@implementation commandNo

- (void)execute
{
	//do nothing
}

- (void)undo
{
	//do nothing
}

- (void)load
{
	//do nothing
}

- (void)store
{
	//do nothing
}

- (id<Command>)perfomeCopy
{
	return [self copy];
}

@end
