//
//  macroCommad.h
//  Command
//
//  Created by hcyrig on 8/8/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

@protocol Command;

@interface macroCommad : NSObject <Command, NSCopying>

- (instancetype)initWithCommands:(NSArray *)commandsArray;

@end
