//
//  ViewController.m
//  DelegateExample
//
//  Created by hsx770911@126.com on 2017/11/2.
//  Copyright © 2017年 hsx770911@126.com. All rights reserved.
//

#import "ViewController.h"
#import "UIView+LayoutMethods.h"
#import "SecondViewController.h"
@interface ViewController ()<CLYSendNameDelegate>
//
@property(nonatomic,strong)UILabel *nameLabel;
//
@property(nonatomic,strong)UIButton *tapBtn;

@end

@implementation ViewController

#pragma mark ==== life ====

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setUpUI];
    
}

#pragma mark ==== life ====


#pragma mark ==== UI ====
- (void)setUpUI{
    [self.view addSubview:self.nameLabel];
    [self.view addSubview:self.tapBtn];
}


#pragma mark ==== UI ====

#pragma mark ==== action ====
- (void)tapBtnAction{
    SecondViewController *vc = [[SecondViewController alloc]init];
    vc.sendNameDelegate = self;
    [self.navigationController pushViewController:vc animated:YES];
}

#pragma mark ==== action ====

#pragma mark ==== delegate ====

- (void)showPersonName:(NSString *)name{
    self.nameLabel.text = name;
}


#pragma mark ==== delegate ====



-(UIButton*)tapBtn{
    if (!_tapBtn) {
        _tapBtn = [[UIButton alloc]init];
        _tapBtn.width = 40;
        _tapBtn.height = 40;
        _tapBtn.backgroundColor = [UIColor redColor];
        _tapBtn.center = CGPointMake(self.view.frame.size.width/2,self.nameLabel.bottom+60);
        [_tapBtn addTarget:self action:@selector(tapBtnAction) forControlEvents:1<<6];
    }
    return _tapBtn;
}



-(UILabel*)nameLabel{
    if (!_nameLabel) {
        _nameLabel = [[UILabel alloc]init];
        _nameLabel.width = 100;
        _nameLabel.height = 16;
        _nameLabel.center = CGPointMake(self.view.frame.size.width/2, 200/2);
    }
    return _nameLabel;
}



@end
