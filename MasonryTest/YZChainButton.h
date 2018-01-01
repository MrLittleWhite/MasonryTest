//
//  YZChainButton.h
//  MasonryTest
//
//  Created by lazy-iOS2 on 2018/1/1.
//  Copyright © 2018年 lazy-iOS2. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YZChainButton : UIButton

- (YZChainButton *(^)(UIControlState state))yz_state;
- (YZChainButton *(^)(NSString *title))yz_title;
- (YZChainButton *(^)(UIColor *color))yz_titleColor;
- (YZChainButton *(^)(NSString *name))yz_imageName;
- (YZChainButton *(^)(CGFloat fontSize))yz_fontSize;

@end
