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

NSMutableAttributedString* attributeString=nil;

NSInteger i=0;

- (void)buttonIsClicked:(UIButton*)button{
    NSLog(@"Button is clicked");
    
    NSMutableAttributedString *cleared = [[NSMutableAttributedString alloc] initWithString:((void)(@"%@"), button.currentTitle)];
    
    NSMutableAttributedString *crossed = [[NSMutableAttributedString alloc] initWithString:((void)(@"%@"), button.currentTitle)];

    [crossed addAttribute:NSStrikethroughStyleAttributeName
                        value:@2
                    range:NSMakeRange(0, [crossed length])];
    if([attributeString isEqual:cleared]) attributeString=crossed;
    else attributeString=cleared;
    [button setAttributedTitle:attributeString forState:UIControlStateNormal];
}

- (IBAction)add:(NSString*)str{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button addTarget:self
               action:@selector(buttonIsClicked:)
     forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:((void)(@"%a"),str) forState:UIControlStateNormal];
    button.frame = CGRectMake(160.0, 250.0+(50*i), 80.0, 40.0);
    [button setTitleColor:[UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:1.0] forState:UIControlStateNormal];
    i=i+1;
    [self.view addSubview:button];
    [button addTarget:self
               action:@selector(buttonIsClicked:) forControlEvents:UIControlEventTouchUpInside];
    attributeString=[[NSMutableAttributedString alloc] initWithString:((void)(@"%@"), button.currentTitle)];
}

- (BOOL)textFieldShouldReturn:(UITextField*)textField{
    [self.view endEditing:YES];
    NSString* str=myTextField.text;
    NSLog(@"%@", str);
    [self add:str];
    textField.text=@"";
    return YES;
}


@end
