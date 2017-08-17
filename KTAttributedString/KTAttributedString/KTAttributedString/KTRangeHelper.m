//
//  KTRangeHelper.m
//  KTAttributedString
//
//  Created by chenjb on 2017/8/16.
//  Copyright © 2017年 chenjb. All rights reserved.
//

#import "KTRangeHelper.h"

@implementation KTRangeHelper

- (instancetype)init {
    self = [super init];
    if (self) {
        self.ranges = [NSMutableArray array];
        self.from = -1;
        self.to = -1;
        self.location = -1;
        self.length = -1;
    }
    return self;
}

@end
