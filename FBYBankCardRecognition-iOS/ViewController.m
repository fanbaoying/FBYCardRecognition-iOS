//
//  ViewController.m
//  FBYBankCardRecognition-iOS
//
//  Created by fby on 2018/1/2.
//  Copyright © 2018年 FBYIDCardRecognition-iOS. All rights reserved.
//

#import "ViewController.h"

#import "IDCardCaptureViewController.h"

#import "FBYBankCardViewController.h"

#import "TIDCardCaptureViewController.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"银行卡和身份证识别";
    
    UIButton *IdCardBtn = [[UIButton alloc]initWithFrame:CGRectMake(SCREEN_WIDTH/4, 150, SCREEN_WIDTH/2, 50)];
    IdCardBtn.backgroundColor = [UIColor lightGrayColor];
    [IdCardBtn addTarget:self action:@selector(IdCardBtn:) forControlEvents:UIControlEventTouchUpInside];
    [IdCardBtn setTitle:@"银行卡识别" forState:0];
    
    [self.view addSubview:IdCardBtn];
    
    UIButton *IdCardBtn1 = [[UIButton alloc]initWithFrame:CGRectMake(SCREEN_WIDTH/4, 250, SCREEN_WIDTH/2, 50)];
    IdCardBtn1.backgroundColor = [UIColor lightGrayColor];
    [IdCardBtn1 addTarget:self action:@selector(IdCardBtn1:) forControlEvents:UIControlEventTouchUpInside];
    [IdCardBtn1 setTitle:@"身份证识别" forState:0];
    
    [self.view addSubview:IdCardBtn1];
    
    UIButton *TWIdCardBtn = [[UIButton alloc]initWithFrame:CGRectMake(SCREEN_WIDTH/4, 350, SCREEN_WIDTH/2, 50)];
    TWIdCardBtn.backgroundColor = [UIColor lightGrayColor];
    [TWIdCardBtn addTarget:self action:@selector(TWIdCardBtn:) forControlEvents:UIControlEventTouchUpInside];
    [TWIdCardBtn setTitle:@"身份证国徽面识别" forState:0];
    
    [self.view addSubview:TWIdCardBtn];
}

- (void)IdCardBtn1:(UIButton *)sender {
    
    IDCardCaptureViewController *idcvc = [[IDCardCaptureViewController alloc]init];
    
    [self.navigationController pushViewController:idcvc animated:YES];
}

- (void)TWIdCardBtn:(UIButton *)sender {
    
    TIDCardCaptureViewController *idcvc = [[TIDCardCaptureViewController alloc]init];
    
    [self.navigationController pushViewController:idcvc animated:YES];
}

- (void)IdCardBtn:(UIButton *)sender {
    
//    IDCardCaptureViewController *idcvc = [[IDCardCaptureViewController alloc]init];
//
//    [self.navigationController pushViewController:idcvc animated:YES];
    
    FBYBankCardViewController *bcvc = [[FBYBankCardViewController alloc]init];

    [self.navigationController pushViewController:bcvc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
