//
//  NSMutableAttributedString+Range.m
//  KTAttributedString
//
//  Created by chenjb on 2017/8/16.
//  Copyright © 2017年 chenjb. All rights reserved.
//

#import "NSMutableAttributedString+Range.h"
#import "NSMutableAttributedString+KTAttributedString.h"
#import "KTRangeHelper.h"

@interface NSMutableAttributedString ()

@property (nonatomic, strong) KTRangeHelper *rangeHelper;

@end

@implementation NSMutableAttributedString (Range)

#pragma mark - Public Methods
- (NSMutableAttributedString *(^)(NSRange))range {
    return ^(NSRange range) {
        if (range.location < self.length && range.length <= self.length && range.location + range.length <= self.length) {
            [self removeAllRanges];
            [self.rangeHelper.ranges addObject:[NSValue valueWithRange:range]];
        }
        
        return self;
    };
}

- (NSMutableAttributedString *(^)(NSUInteger))from {
    return ^(NSUInteger from) {
        if (from < self.length) {
            if (self.rangeHelper.to != -1 && from < self.rangeHelper.to) {
                [self removeAllRanges];
                [self.rangeHelper.ranges addObject:[NSValue valueWithRange:NSMakeRange(from, self.rangeHelper.to - from)]];
            }
            
            self.rangeHelper.from = from;
        }
        
        return self;
    };
}

- (NSMutableAttributedString *(^)(NSUInteger))to {
    return ^(NSUInteger to) {
        if (to <= self.length) {
            if (self.rangeHelper.from != -1 && to > self.rangeHelper.from) {
                [self removeAllRanges];
                [self.rangeHelper.ranges addObject:[NSValue valueWithRange:NSMakeRange(self.rangeHelper.from, to - self.rangeHelper.from)]];
            }
            
            self.rangeHelper.to = to;
        }
        
        return self;
    };
}

- (NSMutableAttributedString *(^)(NSUInteger))location {
    return ^(NSUInteger location) {
        if (location < self.length) {
            if (self.rangeHelper.length != -1 && location + self.rangeHelper.length <= self.length) {
                [self removeAllRanges];
                [self.rangeHelper.ranges addObject:[NSValue valueWithRange:NSMakeRange(location, self.rangeHelper.length)]];
            }
            
            self.rangeHelper.location = location;
        }
        
        return self;
    };
}

- (NSMutableAttributedString *(^)(NSUInteger))_length {
    return ^(NSUInteger length) {
        if (length <= self.length) {
            if (self.rangeHelper.location != -1 && self.rangeHelper.location + length <= self.length) {
                [self removeAllRanges];
                [self.rangeHelper.ranges addObject:[NSValue valueWithRange:NSMakeRange(self.rangeHelper.location, length)]];
            }
            
            self.rangeHelper.length = length;
        }
        
        return self;
    };
}

- (NSMutableAttributedString *(^)(NSString *))match {
    return ^(NSString *substring) {
        return self.matchWithOptions(substring, 0);
    };
}

- (NSMutableAttributedString *(^)(NSString *))matchLast {
    return ^(NSString *substring) {
        return self.matchWithOptions(substring, NSBackwardsSearch);
    };
}

- (NSMutableAttributedString *(^)(NSString *, NSStringCompareOptions)) matchWithOptions {
    return ^(NSString *substring, NSStringCompareOptions options) {
        NSRange range = [self.string rangeOfString:substring options:options];
        [self removeAllRanges];
        [self.rangeHelper.ranges addObject:[NSValue valueWithRange:range]];
        return self;
    };
}

- (NSMutableAttributedString *(^)(NSString *))matchAll {
    return ^(NSString *substring) {
        return self.matchAllWithOptions(substring, 0);
    };
}

- (NSMutableAttributedString *(^)(NSString *, NSStringCompareOptions)) matchAllWithOptions {
    return ^(NSString *substring, NSStringCompareOptions options) {
        NSRange range = [self.string rangeOfString:substring options:options];
        [self removeAllRanges];
        [self.rangeHelper.ranges addObject:[NSValue valueWithRange:range]];
        while (range.length != 0) {
            NSInteger location = range.location + range.length;
            NSInteger length = self.length - location;
            range = [self.string rangeOfString:substring options:options range:NSMakeRange(location, length)];
            [self.rangeHelper.ranges addObject:[NSValue valueWithRange:range]];
        }
        
        return self;
    };
}

#pragma mark - Private Methods
- (void)removeAllRanges {
    [self.rangeHelper.ranges removeAllObjects];
}
@end
