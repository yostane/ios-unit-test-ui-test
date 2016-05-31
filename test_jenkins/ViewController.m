//
//  ViewController.m
//  test_jenkins
//
//  Created by Yassine Benabbas on 31/12/2015.
//  Copyright © 2015 awl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onHelloClicked:(id)sender {
    self.mainTextField.text = @"hello";
}

- (IBAction)onWorldClick:(id)sender {
    self.mainTextField.text = @"World";
}



@end
