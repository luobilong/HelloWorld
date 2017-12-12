//
//  ViewController.m
//  HelloWorld
//
//  Created by ljg on 2017/12/5.
//  Copyright © 2017年 ljg. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)changeGreeting:(id)sender;

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


- (IBAction)changeGreeting:(id)sender {
    self.userName=self.textField.text;
    self.label.text=self.userName;
    
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    UINavigationController *view = [story instantiateViewControllerWithIdentifier:@"theOne"];
    [self presentViewController:view animated:YES completion:nil];
}

-(BOOL)textFieldShouldReturn:(UITextField *)theTextField{
    if(theTextField==self.textField){
        [theTextField resignFirstResponder];
    }
    return YES;
}
@end
