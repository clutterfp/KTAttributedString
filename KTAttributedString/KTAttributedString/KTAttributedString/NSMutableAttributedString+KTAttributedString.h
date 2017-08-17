//
//  NSMutableAttributedString+KTAttributedString.h
//  KTAttributedString
//
//  Created by chenjb on 2017/8/15.
//  Copyright © 2017年 chenjb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSMutableAttributedString (KTAttributedString)

// ForegroundColor
- (NSMutableAttributedString *(^)(UIColor *))color;
- (NSMutableAttributedString *(^)(NSUInteger))hexColor;

// Font
- (NSMutableAttributedString *(^)(UIFont *))font;
- (NSMutableAttributedString *(^)(CGFloat))fontSize;

// ParagraphStyle
- (NSMutableAttributedString *(^)(CGFloat))lineSpacing;
- (NSMutableAttributedString *(^)(CGFloat))paragraphSpacing;
- (NSMutableAttributedString *(^)(NSTextAlignment))alignment;
- (NSMutableAttributedString *(^)(CGFloat))firstLineHeadIndent;
- (NSMutableAttributedString *(^)(CGFloat))headIndent;
- (NSMutableAttributedString *(^)(CGFloat))tailIndent;
- (NSMutableAttributedString *(^)(NSLineBreakMode))lineBreakMode;
- (NSMutableAttributedString *(^)(CGFloat))minimumLineHeight;
- (NSMutableAttributedString *(^)(CGFloat))maximumLineHeight;
- (NSMutableAttributedString *(^)(NSWritingDirection))baseWritingDirection;
- (NSMutableAttributedString *(^)(CGFloat))lineHeightMultiple;
- (NSMutableAttributedString *(^)(CGFloat))paragraphSpacingBefore;
- (NSMutableAttributedString *(^)(float))hyphenationFactor;
- (NSMutableAttributedString *(^)(CGFloat))defaultTabInterval;
- (NSMutableAttributedString *(^)(BOOL))allowsDefaultTighteningForTruncation;

// Ligature
- (NSMutableAttributedString *(^)(NSUInteger))ligature;

// Kern
- (NSMutableAttributedString *(^)(CGFloat))kern;

// StrikethroughStyle
- (NSMutableAttributedString *(^)(NSUnderlineStyle))strikethrough;

// UnderlineStyle
- (NSMutableAttributedString *(^)(NSUnderlineStyle))underline;

// StrokeColor
- (NSMutableAttributedString *(^)(UIColor *))strokeColor;

// BackgroundColor
- (NSMutableAttributedString *(^)(UIColor *))backgroundColor;

// StrokeWidth
- (NSMutableAttributedString *(^)(CGFloat))strokeWidth;

// Shadow
- (NSMutableAttributedString *(^)(NSShadow *))shadow;

// TextEffect
- (NSMutableAttributedString *(^)(NSString *))textEffect;

// Attachment
- (NSMutableAttributedString *(^)(NSTextAttachment *))attachment;

// Link
- (NSMutableAttributedString *(^)(NSString *))link;

// BaselineOffset
- (NSMutableAttributedString *(^)(CGFloat))baselineOffset;

// UnderlineColor
- (NSMutableAttributedString *(^)(UIColor *))underlineColor;

// StrikethroughColor
- (NSMutableAttributedString *(^)(UIColor *))strikethroughColor;

// Obliqueness
- (NSMutableAttributedString *(^)(CGFloat))obliqueness;

// Expansion
- (NSMutableAttributedString *(^)(CGFloat))expansion;

@end
