//
//  ViewController.m
//  KTAttributedString
//
//  Created by chenjb on 2017/8/15.
//  Copyright © 2017年 chenjb. All rights reserved.
//

#import "ViewController.h"
#import "KTAttributedString.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(([UIScreen mainScreen].bounds.size.width - 120) / 2.0, ([UIScreen mainScreen].bounds.size.height - 120) / 2.0, 120, 120)];
    label.numberOfLines = 0;
    label.font = [UIFont systemFontOfSize:20.0];
    label.attributedText = @"Hello World Hello GitHub".kt_attributedString
                           .strikethrough(NSUnderlineStyleNone)
                           .lineSpacing(10)
                           .from(0).to(2)
                           .red
                           .fontSize(15.0)
                           .matchAll(@"o")
                           .hexColor(0xe58c7c)
                           .underline(NSUnderlineStyleSingle)
                           .matchLast(@"Hello")
                           .strikethrough(NSUnderlineStyleSingle)
                           .baselineOffset(0);
    [self.view addSubview:label];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
