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
@synthesize array;

- (IBAction)addItem:(NSString*)str{
    if(!array){
        array = [[NSMutableArray alloc] init];
    }
    BOOL b=[array containsObject:str];
    if(b) NSLog(@"Item is already in list");
    else{
        [array addObject:str];
    }
}

- (BOOL)textFieldShouldReturn:(UITextField*)textField{
    [self.view endEditing:YES];
    //[myTextField resignFirstResponder];
    NSString* str=myTextField.text;
    NSLog(@"%@", str);
    [self addItem:str];
    return YES;
}


@end
