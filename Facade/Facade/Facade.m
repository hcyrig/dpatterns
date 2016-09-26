//
//  Facade.m
//  Facade
//
//  Created by hcyrig on 8/9/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "Facade.h"

#import "ModuleObjectOne.h"
#import "ModuleObjectTwo.h"

@interface Facade ()

@property (nonatomic ,strong) ModuleObjectOne *moduleObjectOne;
@property (nonatomic ,strong) ModuleObjectTwo *moduleObjectTwo;

@end

@implementation Facade

- (void)perfomeSomeAbstractModuleLogic
{
	[self.moduleObjectOne someModuleMethod];
	[self.moduleObjectTwo someModuleMethod];
}

- (ModuleObjectOne *)moduleObjectOne
{
	if (!_moduleObjectOne)
	{
		_moduleObjectOne = [[ModuleObjectOne alloc] init];
	}

	return _moduleObjectOne;
}

- (ModuleObjectTwo *)moduleObjectTwo
{
	if (!_moduleObjectTwo)
	{
		_moduleObjectTwo = [[ModuleObjectTwo alloc]init];
	}

	return _moduleObjectTwo;
}

@end