//
//  ViewController.m
//  Calculator
//
//  Created by Denis Lubchyk on 09.10.17.
//  Copyright © 2017 Denis Lubchyk. All rights reserved.
//

#import "ViewController.h"
#import "calculatorModel.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *valueLabel;
@property(strong, nonatomic) calculatorModel *model;
@property(nonatomic) BOOL waitNextOperand;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.model=[[calculatorModel alloc] init];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onEqualPressed:(UIButton *)sender {
    CGFloat value = [self.model perfomOperand:self.valueLabel.text.floatValue];
    self.valueLabel.text = [NSString stringWithFormat:@"%f",value];
    self.model.currendOperand = value;
    
    
}
- (IBAction)onOperandPressed:(UIButton *)sender {
    NSString *value = self.valueLabel.text;
    
    if ([value isEqualToString:@"0" ] || self.waitNextOperand){
        value=@"";
        self.waitNextOperand= NO;
    }
    
    value=[value stringByAppendingString:sender.titleLabel.text];
    self.valueLabel.text=value;
}

- (IBAction)onClearPressed:(UIButton *)sender {
    self.valueLabel.text=@"0";
    self.model.operation= nil;
}

- (IBAction)onOperationPressed:(UIButton *)sender{
    self.model.operation = sender.titleLabel.text;
    self.model.currendOperand=self.valueLabel.text.floatValue;
    
    self.waitNextOperand = YES;
}


@end
