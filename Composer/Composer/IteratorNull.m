//
//  IteratorNull.m
//  Composer
//
//  Created by hcyrig on 8/11/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "IteratorNull.h"

@implementation IteratorNull

- (BOOL)hasNext
{
	return NO;
}

- (Component *)next
{
	return nil;
}

- (void)remove
{

}

@end
