//
//  ViewController.m
//  AFPopup-Demo
//
//  Created by Alvaro Franco on 3/7/14.
//  Copyright (c) 2014 AlvaroFranco. All rights reserved.
//

#import "ViewController.h"
#import "AFPopupViewController.h"
#import "AFPopupView.h"

@interface ViewController ()

@property (nonatomic, strong) IBOutlet UIButton *showModalViewButton;
@property (nonatomic, strong) AFPopupViewController *modalVC;
@property (nonatomic, strong) AFPopupView *modalView;

@end

@implementation ViewController

-(UIStatusBarStyle)preferredStatusBarStyle{
    
    return UIStatusBarStyleLightContent;
}

-(void)viewDidLoad {
    [super viewDidLoad];

    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(hide) name:@"HideAFPopup" object:nil];
}

- (IBAction)showPopupView:(UIButton *)sender {
    // get reference to storyboard
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:Nil];

    // get instance of AFPopupViewController
    self.modalVC = [storyboard instantiateViewControllerWithIdentifier:@"ModalTest"];

    // get instance of AFPopupView and attach it to AFPopupViewController
    self.modalView = [AFPopupView popupWithView:self.modalVC.view];

    // present popup view
    [self.modalView show];
}

-(void)hide {

    // hide popup view
    [self.modalView hide];
}

@end
