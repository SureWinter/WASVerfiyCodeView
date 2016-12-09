//
//  ViewController.m
//  WASVerifyCodeView
//
//  Created by luofeiyu on 2016/12/9.
//  Copyright © 2016年 wangshuo. All rights reserved.
//

#import "ViewController.h"
#import "WASVerifyCodeView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *verifyCode;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}
- (IBAction)clickMe:(id)sender {
    __weak typeof(self) weakSelf = self;
    [WASVerifyCodeView showVerifyCodeViewOnView:self.view accountId:@"13123123123" verifyCodeBlock:^(NSString *code) {
        weakSelf.verifyCode.text = [NSString stringWithFormat:@"验证码是：%@",code];
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
