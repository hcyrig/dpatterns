//
//  Command.h
//  Command
//
//  Created by hcyrig on 8/8/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

@protocol Command <NSObject>

- (void)execute;
- (void)undo;
- (void)load;
- (void)store;

- (id)perfomeCopy;

@end
