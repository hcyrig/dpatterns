//
//  ProtectedProxy.h
//  Proxy
//
//  Created by hcyrig on 8/12/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "Iterface.h"

@class Subject;

@interface ProtectedProxy : NSProxy <Iterface>

- (instancetype)initSubject:(Subject *)subject;

@end
