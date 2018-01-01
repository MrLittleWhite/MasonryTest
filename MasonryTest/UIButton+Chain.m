//
//  UIButton+Chain.m
//  MasonryTest
//
//  Created by lazy-iOS2 on 2018/1/1.
//  Copyright © 2018年 lazy-iOS2. All rights reserved.
//

#import "UIButton+Chain.h"

@implementation UIButton (Chain)

- (UIButton *(^)(NSString *normalTitle))normalTitle {
    return ^id (NSString *normalTitle) {
        [self setTitle:normalTitle
              forState:UIControlStateNormal];
        return self;
    };
}
- (UIButton *(^)(NSString *selectedTitle))selectedTitle {
    return ^id (NSString *selectedTitle) {
        [self setTitle:selectedTitle
              forState:UIControlStateSelected];
        return self;
    };
}
- (UIButton *(^)(UIColor *normalTitleColor))normalTitleColor {
    return ^id (UIColor *normalTitleColor) {
        [self setTitleColor:normalTitleColor
                   forState:UIControlStateNormal];
        return self;
    };
}
- (UIButton *(^)(UIColor *selectedTitleColor))selectedTitleColor {
    return ^id (UIColor *selectedTitleColor) {
        [self setTitleColor:selectedTitleColor
                   forState:UIControlStateSelected];
        return self;
    };
}
- (UIButton *(^)(NSString *normalImageName))normalImageName {
    return ^id (NSString *normalImageName) {
        [self setImage:[UIImage imageNamed:normalImageName]
              forState:UIControlStateNormal];
        return self;
    };
}
- (UIButton *(^)(NSString *selectedImageName))selectedImageName {
    return ^id (NSString *selectedImageName) {
        [self setImage:[UIImage imageNamed:selectedImageName]
              forState:UIControlStateSelected];
        return self;
    };
}
- (UIButton *(^)(CGFloat fontSize))fontSize {
    return ^id (CGFloat fontSize) {
        self.titleLabel.font = [UIFont systemFontOfSize:fontSize];
        return self;
    };
}

@end
