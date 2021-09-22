//
//  ViewController.h
//  ShoppingList
//
//  Created by Aoife McManus on 9/17/21.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property(nonatomic, strong) IBOutlet UITextField* myTextField;
@property(nonatomic, strong) NSMutableArray* array;
@property(nonatomic, strong) IBOutletCollection(UIButton) NSMutableArray *buttons;


@end

