//
//  NSAttributedString+KTAttributedString.m
//  KTAttributedString
//
//  Created by chenjb on 2017/8/17.
//  Copyright © 2017年 chenjb. All rights reserved.
//

#import "NSAttributedString+KTAttributedString.h"

@implementation NSAttributedString (KTAttributedString)

- (NSMutableAttributedString *)kt_attributedString {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:self];
    return attributedString;
}

@end
