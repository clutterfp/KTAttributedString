//
//  NSString+KTAttributedString.m
//  KTAttributedString
//
//  Created by chenjb on 2017/8/17.
//  Copyright © 2017年 chenjb. All rights reserved.
//

#import "NSString+KTAttributedString.h"

@implementation NSString (KTAttributedString)

- (NSMutableAttributedString *)kt_attributedString {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self];
    return attributedString;
}

@end
