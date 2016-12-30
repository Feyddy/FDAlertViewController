//
//  ViewController.m
//  FDAlertViewController
//
//  Created by t3 on 16/12/30.
//  Copyright © 2016年 feyddy. All rights reserved.
//

#import "ViewController.h"
#import "FDAlertViewController.h"

@interface ViewController ()
@property (strong, nonatomic) UIButton *button1;
@property (strong, nonatomic) UIButton *button2;
@property (strong, nonatomic) UIButton *button3;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.button1 = [[UIButton alloc] initWithFrame:CGRectMake(20, 70, 100, 35)];
    self.button1.layer.cornerRadius = 22.5;
    self.button1.layer.borderColor = [UIColor colorWithRed:1.00 green:0.03 blue:0.29 alpha:1.00].CGColor;
    self.button1.layer.borderWidth = 1;
    [self.button1 addTarget:self action:@selector(cliFDShowAlertButton1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button1];
    
    self.button2 = [[UIButton alloc] initWithFrame:CGRectMake(20, 120, 100, 35)];
    self.button2.layer.cornerRadius = 22.5;
    self.button2.layer.borderColor = [UIColor colorWithRed:0.235 green:0.709 blue:1 alpha:1.00].CGColor;
    self.button2.layer.borderWidth = 1;
    [self.button2 addTarget:self action:@selector(cliFDShowAlertButton2) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button2];
    
    self.button3 = [[UIButton alloc] initWithFrame:CGRectMake(20, 160, 100, 35)];
    self.button3.layer.cornerRadius = 22.5;
    self.button3.layer.borderColor = [UIColor colorWithRed:0.15 green:0.68 blue:0.38 alpha:1.00].CGColor;
    self.button3.layer.borderWidth = 1;
    [self.button3 addTarget:self action:@selector(cliFDShowAlertButton3) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button3];
    
}


- (void)cliFDShowAlertButton1 {
    
    FDAlertViewController *alertVC = [FDAlertViewController alertControllerWithTitle:@"Access Microphone?" message:@"Are you sure that you want to allow this app to access your microphone?" ];
    
    FDAlertAction *cancel = [FDAlertAction actionWithTitle:@"取消" handler:^(FDAlertAction *action) {
        NSLog(@"点击了 %@ 按钮",action.title);
    }];
    
    FDAlertAction *sure = [FDAlertAction actionWithTitle:@"确定" handler:^(FDAlertAction *action) {
        NSLog(@"点击了 %@ 按钮",action.title);
    }];
    
    [alertVC addAction:cancel];
    [alertVC addAction:sure];
    
    [self presentViewController:alertVC animated:NO completion:nil];
}

- (void)cliFDShowAlertButton2{
    
    FDAlertViewController *alertVC = [FDAlertViewController alertControllerWithTitle:@"系统更新" message:@"iOS88.88现已准备好了, 解决了好几万个重大bug,是否更新?" ];
    
    FDAlertAction *cancel = [FDAlertAction actionWithTitle:@"不要更新" handler:^(FDAlertAction *action) {
        NSLog(@"点击了 %@ 按钮",action.title);
    }];
    
    FDAlertAction *updateNow = [FDAlertAction actionWithTitle:@"立即更新" handler:^(FDAlertAction *action) {
        NSLog(@"点击了 %@ 按钮",action.title);
    }];
    
    FDAlertAction *updateLater = [FDAlertAction actionWithTitle:@"稍后更新" handler:^(FDAlertAction *action) {
        NSLog(@"点击了 %@ 按钮",action.title);
    }];
    
    [alertVC addAction:cancel];
    [alertVC addAction:updateNow];
    [alertVC addAction:updateLater];
    
    [self presentViewController:alertVC animated:NO completion:nil];
}

- (void)cliFDShowAlertButton3 {
    
    FDAlertViewController *alertVC = [FDAlertViewController alertControllerWithTitle:@"发现新版本" message:@"1. 日夜赶工,修复了一堆bug.\n2. 跟着产品经理改来改去,增加了很多功能.\n3. 貌似性能提升了那么一点点." ];
    alertVC.messageAlignment = NSTextAlignmentLeft;
    
    FDAlertAction *cancel = [FDAlertAction actionWithTitle:@"我知道了" handler:^(FDAlertAction *action) {
        NSLog(@"点击了 %@ 按钮",action.title);
    }];
    
    FDAlertAction *update = [FDAlertAction actionWithTitle:@"立即更新" handler:^(FDAlertAction *action) {
        NSLog(@"点击了 %@ 按钮",action.title);
    }];
    
    [alertVC addAction:cancel];
    [alertVC addAction:update];
    
    [self presentViewController:alertVC animated:NO completion:nil];
}


@end
