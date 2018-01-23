//
//  ViewController.m
//  MasonryTest
//
//  Created by lazy-iOS2 on 2018/1/1.
//  Copyright © 2018年 lazy-iOS2. All rights reserved.
//

#import "ViewController.h"
#import <Masonry/Masonry.h>
#import "UIButton+Chain.h"
#import "YZChainButton.h"

@interface ViewController ()

//@property (nonatomic, weak) MASConstraint *likeButton2CenterYOffCn;
@property (nonatomic, strong) MASConstraint *likeButton2CenterYOffCn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *likeButton1 = [UIButton buttonWithType:UIButtonTypeCustom];
    likeButton1.normalTitle(@"2017").selectedTitle(@"2018");
    likeButton1.fontSize(20);
    likeButton1.normalTitleColor([UIColor cyanColor]).selectedTitleColor([UIColor redColor]);
    likeButton1.normalImageName(@"btton_like_recommend_tyh_nor");
    likeButton1.selectedImageName(@"btton_like_recommend_tyh_pre");
    [likeButton1 addTarget:self
                    action:@selector(buttonClicked:)
          forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:likeButton1];
    
    [likeButton1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view).centerOffset(CGPointMake(0, -150));
    }];
    
    YZChainButton*likeButton2 = [YZChainButton buttonWithType:UIButtonTypeCustom];
    likeButton2.yz_state(UIControlStateNormal).yz_fontSize(20);
    likeButton2.yz_title(@"2017").yz_titleColor([UIColor cyanColor]);
    likeButton2.yz_imageName(@"btton_like_recommend_tyh_nor");
    likeButton2.yz_state(UIControlStateSelected);
    likeButton2.yz_title(@"2018").yz_titleColor([UIColor redColor]);
    likeButton2.yz_imageName(@"btton_like_recommend_tyh_pre");
    [likeButton2 addTarget:self
                    action:@selector(buttonClicked:)
          forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:likeButton2];
    
//    [likeButton2 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.center.equalTo(self.view).centerOffset(CGPointMake(0, 150));
//    }];
    
    [likeButton2 mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.centerY.equalTo(self.view).offset(150).priority(500);
        self.likeButton2CenterYOffCn = make.centerY.equalTo(self.view).offset(200).priority(250);
    }];
    
    likeButton2.tag = 2;
}


- (void)buttonClicked:(UIButton *)button {
    button.selected = !button.selected;
    if (button.tag == 2) {
        
        //未改进前修改priority方法1
//        [self.likeButton2CenterYOffCn deactivate];
//        self.likeButton2CenterYOffCn.priority(button.selected?750:250);
//        [self.likeButton2CenterYOffCn activate];
        
        
        //未改进前修改priority方法2
//        [self.likeButton2CenterYOffCn uninstall];
//        [button mas_updateConstraints:^(MASConstraintMaker *make) {
//            self.likeButton2CenterYOffCn = make.centerY.equalTo(self.view).offset(200).priority(button.selected?750:250);
//        }];
        
        //改进后，修改priority方法1
//        self.likeButton2CenterYOffCn.priority(button.selected?750:250);
        
        //改进后，修改priority方法2
        [button mas_updateConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.view).offset(200).priority(button.selected?750:250);
        }];
    } else {
        //修改constant
        [button mas_updateConstraints:^(MASConstraintMaker *make) {
            make.center.equalTo(self.view).centerOffset(CGPointMake(0, button.selected?-200:-150));
        }];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
