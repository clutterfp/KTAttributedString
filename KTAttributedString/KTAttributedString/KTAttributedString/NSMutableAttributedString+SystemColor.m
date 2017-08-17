//
//  NSMutableAttributedString+SystemColor.m
//  KTAttributedString
//
//  Created by chenjb on 2017/8/16.
//  Copyright © 2017年 chenjb. All rights reserved.
//

#import "NSMutableAttributedString+SystemColor.h"
#import "NSMutableAttributedString+KTAttributedString.h"

@implementation NSMutableAttributedString (SystemColor)

- (NSMutableAttributedString *)black {
    return self.color([UIColor blackColor]);
}

- (NSMutableAttributedString *)darkGray {
    return self.color([UIColor darkGrayColor]);
}

- (NSMutableAttributedString *)lightGray {
    return self.color([UIColor lightGrayColor]);
}

- (NSMutableAttributedString *)white {
    return self.color([UIColor whiteColor]);
}

- (NSMutableAttributedString *)gray {
    return self.color([UIColor grayColor]);
}

- (NSMutableAttributedString *)red {
    return self.color([UIColor redColor]);
}

- (NSMutableAttributedString *)green {
    return self.color([UIColor greenColor]);
}

- (NSMutableAttributedString *)blue {
    return self.color([UIColor blueColor]);
}

- (NSMutableAttributedString *)cyan {
    return self.color([UIColor cyanColor]);
}

- (NSMutableAttributedString *)yellow {
    return self.color([UIColor yellowColor]);
}

- (NSMutableAttributedString *)magenta {
    return self.color([UIColor magentaColor]);
}

- (NSMutableAttributedString *)orange {
    return self.color([UIColor orangeColor]);
}

- (NSMutableAttributedString *)purple {
    return self.color([UIColor purpleColor]);
}

- (NSMutableAttributedString *)brown {
    return self.color([UIColor brownColor]);
}

- (NSMutableAttributedString *)clear {
    return self.color([UIColor clearColor]);
}

@end
