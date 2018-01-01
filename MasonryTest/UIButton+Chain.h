//
//  UIButton+Chain.h
//  MasonryTest
//
//  Created by lazy-iOS2 on 2018/1/1.
//  Copyright © 2018年 lazy-iOS2. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Chain)

- (UIButton *(^)(NSString *normalTitle))normalTitle;
- (UIButton *(^)(NSString *selectedTitle))selectedTitle;
- (UIButton *(^)(UIColor *normalTitleColor))normalTitleColor;
- (UIButton *(^)(UIColor *selectedTitleColor))selectedTitleColor;
- (UIButton *(^)(NSString *normalImageName))normalImageName;
- (UIButton *(^)(NSString *selectedImageName))selectedImageName;
- (UIButton *(^)(CGFloat fontSize))fontSize;

@end
