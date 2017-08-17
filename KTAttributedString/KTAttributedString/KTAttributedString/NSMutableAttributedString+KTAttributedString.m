//
//  NSMutableAttributedString+KTAttributedString.m
//  KTAttributedString
//
//  Created by chenjb on 2017/8/15.
//  Copyright © 2017年 chenjb. All rights reserved.
//

#import "NSMutableAttributedString+KTAttributedString.h"
#import <objc/runtime.h>
#import "KTRangeHelper.h"

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@implementation NSMutableAttributedString (KTAttributedString)

- (KTRangeHelper *)rangeHelper {
    KTRangeHelper *rangeHelper = objc_getAssociatedObject(self, @selector(rangeHelper));
    if(!rangeHelper) {
        rangeHelper = [[KTRangeHelper alloc] init];
        [rangeHelper.ranges addObject:[NSValue valueWithRange:NSMakeRange(0, self.length)]];
        objc_setAssociatedObject(self, @selector(rangeHelper), rangeHelper, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    
    return rangeHelper;
}

#pragma mark - Public Methods
- (NSMutableAttributedString *(^)(UIColor *))color {
    return ^(UIColor *color) {
        [self addAttributeName:NSForegroundColorAttributeName value:color];
        return self;
    };
}

- (NSMutableAttributedString *(^)(NSUInteger))hexColor {
    return ^(NSUInteger hexColor) {
        [self addAttributeName:NSForegroundColorAttributeName value:UIColorFromRGB(hexColor)];
        return self;
    };
}

- (NSMutableAttributedString *(^)(UIFont *))font {
    return ^(UIFont *font) {
        [self addAttributeName:NSFontAttributeName value:font];
        return self;
    };
}

- (NSMutableAttributedString *(^)(CGFloat))fontSize {
    return ^(CGFloat fontSize) {
        [self addAttributeName:NSFontAttributeName value:[UIFont systemFontOfSize:fontSize]];
        return self;
    };
}

- (NSMutableAttributedString *(^)(CGFloat))lineSpacing {
    return ^(CGFloat lineSpacing) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.lineSpacing = lineSpacing;
        [self addAttributeName:NSParagraphStyleAttributeName value:paragraphStyle];
        return self;
    };
}

- (NSMutableAttributedString *(^)(CGFloat))paragraphSpacing {
    return ^(CGFloat paragraphSpacing) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.paragraphSpacing = paragraphSpacing;
        [self addAttributeName:NSParagraphStyleAttributeName value:paragraphStyle];
        return self;
    };
}

- (NSMutableAttributedString *(^)(NSTextAlignment))alignment {
    return ^(NSTextAlignment alignment) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.alignment = alignment;
        [self addAttributeName:NSParagraphStyleAttributeName value:paragraphStyle];
        return self;
    };
}

- (NSMutableAttributedString *(^)(CGFloat))firstLineHeadIndent {
    return ^(CGFloat firstLineHeadIndent) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.firstLineHeadIndent = firstLineHeadIndent;
        [self addAttributeName:NSParagraphStyleAttributeName value:paragraphStyle];
        return self;
    };
}

- (NSMutableAttributedString *(^)(CGFloat))headIndent {
    return ^(CGFloat headIndent) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.headIndent = headIndent;
        [self addAttributeName:NSParagraphStyleAttributeName value:paragraphStyle];
        return self;
    };
}

- (NSMutableAttributedString *(^)(CGFloat))tailIndent {
    return ^(CGFloat tailIndent) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.tailIndent = tailIndent;
        [self addAttributeName:NSParagraphStyleAttributeName value:paragraphStyle];
        return self;
    };
}

- (NSMutableAttributedString *(^)(NSLineBreakMode))lineBreakMode {
    return ^(NSLineBreakMode lineBreakMode) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.lineBreakMode = lineBreakMode;
        [self addAttributeName:NSParagraphStyleAttributeName value:paragraphStyle];
        return self;
    };
}

- (NSMutableAttributedString *(^)(CGFloat))minimumLineHeight {
    return ^(CGFloat minimumLineHeight) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.minimumLineHeight = minimumLineHeight;
        [self addAttributeName:NSParagraphStyleAttributeName value:paragraphStyle];
        return self;
    };
}

- (NSMutableAttributedString *(^)(CGFloat))maximumLineHeight {
    return ^(CGFloat maximumLineHeight) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.maximumLineHeight = maximumLineHeight;
        [self addAttributeName:NSParagraphStyleAttributeName value:paragraphStyle];
        return self;
    };
}

- (NSMutableAttributedString *(^)(NSWritingDirection))baseWritingDirection {
    return ^(NSWritingDirection baseWritingDirection) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.baseWritingDirection = baseWritingDirection;
        [self addAttributeName:NSParagraphStyleAttributeName value:paragraphStyle];
        return self;
    };
}

- (NSMutableAttributedString *(^)(CGFloat))lineHeightMultiple {
    return ^(CGFloat lineHeightMultiple) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.lineHeightMultiple = lineHeightMultiple;
        [self addAttributeName:NSParagraphStyleAttributeName value:paragraphStyle];
        return self;
    };
}

- (NSMutableAttributedString *(^)(CGFloat))paragraphSpacingBefore {
    return ^(CGFloat paragraphSpacingBefore) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.paragraphSpacingBefore = paragraphSpacingBefore;
        [self addAttributeName:NSParagraphStyleAttributeName value:paragraphStyle];
        return self;
    };
}

- (NSMutableAttributedString *(^)(float))hyphenationFactor {
    return ^(float hyphenationFactor) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.hyphenationFactor = hyphenationFactor;
        [self addAttributeName:NSParagraphStyleAttributeName value:paragraphStyle];
        return self;
    };
}

- (NSMutableAttributedString *(^)(CGFloat))defaultTabInterval {
    return ^(CGFloat defaultTabInterval) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.defaultTabInterval = defaultTabInterval;
        [self addAttributeName:NSParagraphStyleAttributeName value:paragraphStyle];
        return self;
    };
}

- (NSMutableAttributedString *(^)(BOOL))allowsDefaultTighteningForTruncation {
    return ^(BOOL allowsDefaultTighteningForTruncation) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.allowsDefaultTighteningForTruncation = allowsDefaultTighteningForTruncation;
        [self addAttributeName:NSParagraphStyleAttributeName value:paragraphStyle];
        return self;
    };
}

- (NSMutableAttributedString *(^)(NSUInteger))ligature {
    return ^(NSUInteger ligature) {
        [self addAttributeName:NSLigatureAttributeName value:@(ligature)];
        return self;
    };
}

- (NSMutableAttributedString *(^)(CGFloat))kern {
    return ^(CGFloat kern) {
        [self addAttributeName:NSKernAttributeName value:@(kern)];
        return self;
    };
}

- (NSMutableAttributedString *(^)(NSUnderlineStyle))strikethrough {
    return ^(NSUnderlineStyle strikethrough) {
        [self addAttributeName:NSStrikethroughStyleAttributeName value:@(strikethrough)];
        return self;
    };
}

- (NSMutableAttributedString *(^)(NSUnderlineStyle))underline {
    return ^(NSUnderlineStyle underline) {
        [self addAttributeName:NSUnderlineStyleAttributeName value:[NSNumber numberWithInteger:underline]];
        return self;
    };
}

- (NSMutableAttributedString *(^)(UIColor *))strokeColor {
    return ^(UIColor *strokeColor) {
        [self addAttributeName:NSStrokeColorAttributeName value:strokeColor];
        return self;
    };
}

- (NSMutableAttributedString *(^)(UIColor *))backgroundColor {
    return ^(UIColor *backgroundColor) {
        [self addAttributeName:NSBackgroundColorAttributeName value:backgroundColor];
        return self;
    };
}

- (NSMutableAttributedString *(^)(CGFloat))strokeWidth {
    return ^(CGFloat strokeWidth) {
        [self addAttributeName:NSStrokeWidthAttributeName value:@(strokeWidth)];
        return self;
    };
}

- (NSMutableAttributedString *(^)(NSShadow *))shadow {
    return ^(NSShadow *shadow) {
        [self addAttributeName:NSShadowAttributeName value:shadow];
        return self;
    };
}

- (NSMutableAttributedString *(^)(NSString *))textEffect {
    return ^(NSString *textEffect) {
        [self addAttributeName:NSTextEffectAttributeName value:textEffect];
        return self;
    };
}

- (NSMutableAttributedString *(^)(NSTextAttachment *))attachment {
    return ^(NSTextAttachment *attachment) {
        [self addAttributeName:NSAttachmentAttributeName value:attachment];
        return self;
    };
}

- (NSMutableAttributedString *(^)(NSString *))link {
    return ^(NSString *link) {
        [self addAttributeName:NSLinkAttributeName value:link];
        return self;
    };
}

- (NSMutableAttributedString *(^)(CGFloat))baselineOffset {
    return ^(CGFloat baselineOffset) {
        [self addAttributeName:NSBaselineOffsetAttributeName value:@(baselineOffset)];
        return self;
    };
}

- (NSMutableAttributedString *(^)(UIColor *))underlineColor {
    return ^(UIColor * underlineColor) {
        [self addAttributeName:NSUnderlineColorAttributeName value:underlineColor];
        return self;
    };
}

- (NSMutableAttributedString *(^)(UIColor *))strikethroughColor {
    return ^(UIColor * strikethroughColor) {
        [self addAttributeName:NSStrikethroughColorAttributeName value:strikethroughColor];
        return self;
    };
}

- (NSMutableAttributedString *(^)(CGFloat))obliqueness {
    return ^(CGFloat obliqueness) {
        [self addAttributeName:NSObliquenessAttributeName value:@(obliqueness)];
        return self;
    };
}

- (NSMutableAttributedString *(^)(CGFloat))expansion {
    return ^(CGFloat expansion) {
        [self addAttributeName:NSExpansionAttributeName value:@(expansion)];
        return self;
    };
}

#pragma mark - Private Methods
- (void)addAttributeName:(NSString *)name value:(id)value {
    for (NSValue *range in self.rangeHelper.ranges) {
        [self addAttribute:name value:value range:[range rangeValue]];
    }
}
@end
