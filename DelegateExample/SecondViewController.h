//
//  SecondViewController.h
//  DelegateExample
//
//  Created by hsx770911@126.com on 2017/11/2.
//  Copyright © 2017年 hsx770911@126.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CLYSendNameDelegate.h"
@interface SecondViewController : UIViewController

@property (nonatomic, weak) id<CLYSendNameDelegate> sendNameDelegate;

@end
