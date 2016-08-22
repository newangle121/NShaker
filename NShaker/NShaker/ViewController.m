//
//  ViewController.m
//  NShaker
//
//  Created by Star on 16/8/22.
//  Copyright © 2016年 Xin. All rights reserved.
//

#import "ViewController.h"
#import "NShaker.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView         *yellowV;
@property (weak, nonatomic) IBOutlet UIView         *purpleV;
@property (weak, nonatomic) IBOutlet UITextField    *textField;
@property (weak, nonatomic) IBOutlet UITextView     *textView;
@property (nonatomic, strong) NShaker               *shaker;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.shaker = [[NShaker alloc] initWithView:self.yellowV direction:NShakerLeftRight];
    
    self.textView.text = @"测试使用";
    self.shaker = [[NShaker alloc] initWithArray:@[self.yellowV,self.purpleV,self.textView,self.textField] direction:NShakerLeftRight];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)didTapAction:(id)sender {
    [self.shaker shake];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
