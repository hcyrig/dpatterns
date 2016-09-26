//
//  AbstractFactoryInterface.h
//  AbstractFactory
//
//  Created by hcyrig on 7/27/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

@class ItemInterfaceOne;

@class ItemInterfaceTwo;

@class ItemInterfaceThree;

@interface AbstractFactoryInterface : NSObject

- (ItemInterfaceOne *)createItemOne;

- (ItemInterfaceTwo *)createItemTwo;

- (ItemInterfaceThree *)createItemThree;

@end
