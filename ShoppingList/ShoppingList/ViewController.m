//
//  ViewController.m
//  ShoppingList
//
//  Created by Aoife McManus on 9/17/21.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

@synthesize myTextField;

- (BOOL)textFieldShouldReturn:(UITextField*)textField{
    [self.view endEditing:YES];
    //[myTextField resignFirstResponder];
    NSString* str=myTextField.text;
    NSLog(@"%@", str);
    return YES;
    
}

@end
