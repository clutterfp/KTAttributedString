//
//  KTRangeHelper.h
//  KTAttributedString
//
//  Created by chenjb on 2017/8/16.
//  Copyright © 2017年 chenjb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KTRangeHelper : NSObject

@property (nonatomic, strong) NSMutableArray *ranges;

@property (nonatomic, assign) NSInteger from;
@property (nonatomic, assign) NSInteger to;

@property (nonatomic, assign) NSInteger location;
@property (nonatomic, assign) NSInteger length;

@end
