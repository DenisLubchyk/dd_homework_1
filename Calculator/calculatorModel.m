//
//  calculatorModel.m
//  Calculator
//
//  Created by Denis Lubchyk on 10.10.17.
//  Copyright © 2017 Denis Lubchyk. All rights reserved.
//

#import "calculatorModel.h"

@implementation calculatorModel
 -(CGFloat)perfomOperand:(CGFloat)operand
{
    CGFloat value = self.currendOperand;
    if ([self.operation isEqualToString:@"*"]){
        value *= operand;
    }
    else if ([self.operation isEqualToString:@"/"]){
        value /= operand;
    }
    else if ([self.operation isEqualToString:@"+"]){
        value += operand;
    }
    else if ([self.operation isEqualToString:@"-"]){
        value -= operand;
    }
     else if ([self.operation isEqualToString:@"x^2"]){
        value = value * value;
    }
     else if ([self.operation isEqualToString:@"+/-"]){
         value = -value;
     }

    
    return value;
}
@end
