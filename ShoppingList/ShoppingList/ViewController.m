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
@synthesize buttons;

- (void)buttonIsClicked:(UIButton*)button{
    if(button.backgroundColor==[UIColor whiteColor])
        button.backgroundColor=[UIColor grayColor];
}

- (IBAction)add:(NSString*)str{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button addTarget:self
               action:@selector(buttonIsClicked:)
     forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:((void)(@"%a"),str) forState:UIControlStateNormal];
    //button.center=[self.view convertPoint:self.view.center fromView:self.view.superview];
    button.frame = CGRectMake(80.0, 210.0, 160.0, 40.0);
    [self.view addSubview:button];
}

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
    [self add:str];
    //[self addItem:str];
    return YES;
}


@end
