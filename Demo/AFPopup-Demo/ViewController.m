//
//  ViewController.m
//  AFPopup-Demo
//
//  Created by Alvaro Franco on 3/7/14.
//  Copyright (c) 2014 AlvaroFranco. All rights reserved.
//

#import "ViewController.h"
#import "ModalTestViewController.h"
#import "AFPopupView.h"

@interface ViewController ()

@property (nonatomic, strong) IBOutlet UIButton *toggleButton;
@property (nonatomic, strong) ModalTestViewController *modalTest;
@property (nonatomic, strong) AFPopupView *popup;

@end

@implementation ViewController

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

-(void)viewDidLoad {
    [super viewDidLoad];
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:Nil];
    _modalTest = [storyboard instantiateViewControllerWithIdentifier:@"ModalTest"];
    
    [_toggleButton addTarget:self action:@selector(go) forControlEvents:UIControlEventTouchUpInside];
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(hide) name:@"HideAFPopup" object:nil];
}

-(void)go {
    
    _popup = [AFPopupView popupWithView:_modalTest.view];
    [_popup show];
}

-(void)hide {

    [_popup hide];
}

-(void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
