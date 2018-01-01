//
//  YZChainButton.m
//  MasonryTest
//
//  Created by lazy-iOS2 on 2018/1/1.
//  Copyright © 2018年 lazy-iOS2. All rights reserved.
//

#import "YZChainButton.h"

@interface YZChainButton ()

@property (nonatomic, assign) UIControlState yz_controlState;

@end

@implementation YZChainButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (YZChainButton *(^)(UIControlState state))yz_state {
    return ^id (UIControlState state) {
        self.yz_controlState = state;
        return self;
    };
}
- (YZChainButton *(^)(NSString *title))yz_title {
    return ^id (NSString *title) {
        [self setTitle:title
              forState:self.yz_controlState];
        return self;
    };
}

- (YZChainButton *(^)(UIColor *color))yz_titleColor {
    return ^id (UIColor *color) {
        [self setTitleColor:color
                   forState:self.yz_controlState];
        return self;
    };
}

- (YZChainButton *(^)(NSString *name))yz_imageName  {
    return ^id (NSString *name) {
        [self setImage:[UIImage imageNamed:name]
              forState:self.yz_controlState];
        return self;
    };
}

- (YZChainButton *(^)(CGFloat fontSize))yz_fontSize {
    return ^id (CGFloat fontSize) {
        self.titleLabel.font = [UIFont systemFontOfSize:fontSize];
        return self;
    };
}

@end
