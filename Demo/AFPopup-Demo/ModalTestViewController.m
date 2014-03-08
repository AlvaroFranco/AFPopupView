//
//  ModalTestViewController.m
//  AFPopup-Demo
//
//  Created by Alvaro Franco on 3/7/14.
//  Copyright (c) 2014 AlvaroFranco. All rights reserved.
//

#import "ModalTestViewController.h"

@interface ModalTestViewController ()

@end

@implementation ModalTestViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)close:(id)sender {
    
    [[NSNotificationCenter defaultCenter]postNotificationName:@"HideAFPopup" object:nil];
}

-(void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor clearColor];
    UIToolbar *blurbar = [[UIToolbar alloc] initWithFrame:self.view.frame];
    blurbar.barStyle = UIBarStyleDefault;
    [self.view addSubview:blurbar];
    [self.view sendSubviewToBack:blurbar];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
