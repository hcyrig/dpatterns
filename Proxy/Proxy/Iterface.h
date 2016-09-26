//
//  Iterface.h
//  Proxy
//
//  Created by hcyrig on 8/12/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

@protocol Iterface <NSObject>

@optional
	- (void)someMethodOne;
	- (void)someMethodTwo;
	- (void)someMethodThree;
	@property (nonatomic, copy) NSString *name;

@end
