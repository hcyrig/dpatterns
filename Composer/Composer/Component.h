//
//  Component.h
//  Composer
//
//  Created by hcyrig on 8/11/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

@class Iterator;

@interface Component : NSObject

- (NSString *)name;

- (NSString *)descriptions;

- (void)print;

- (void)add:(Component *)component;

- (void)removeComponent:(Component *)component;

- (Component *)component:(NSInteger)idComponent;

- (Iterator *)iterator;

@end
