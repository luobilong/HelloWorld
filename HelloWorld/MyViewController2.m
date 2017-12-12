//
//  MyViewController2.m
//  HelloWorld
//
//  Created by ljg on 2017/12/8.
//  Copyright © 2017年 ljg. All rights reserved.
//

#import "MyViewController2.h"

@interface MyViewController2 ()
- (IBAction)goBack:(id)sender;

@end

@implementation MyViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)goBack:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
