//
//  NSMutableAttributedString+Range.h
//  KTAttributedString
//
//  Created by chenjb on 2017/8/16.
//  Copyright © 2017年 chenjb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableAttributedString (Range)

- (NSMutableAttributedString *(^)(NSRange))range;

- (NSMutableAttributedString *(^)(NSUInteger))from;
- (NSMutableAttributedString *(^)(NSUInteger))to;

- (NSMutableAttributedString *(^)(NSUInteger))location;
- (NSMutableAttributedString *(^)(NSUInteger))_length;

- (NSMutableAttributedString *(^)(NSString *))match;
- (NSMutableAttributedString *(^)(NSString *))matchLast;
- (NSMutableAttributedString *(^)(NSString *, NSStringCompareOptions)) matchWithOptions;
- (NSMutableAttributedString *(^)(NSString *))matchAll;
- (NSMutableAttributedString *(^)(NSString *, NSStringCompareOptions)) matchAllWithOptions;
@end
