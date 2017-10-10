//
//  calculatorModel.h
//  Calculator
//
//  Created by Denis Lubchyk on 10.10.17.
//  Copyright © 2017 Denis Lubchyk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIkit.h"
@interface calculatorModel : NSObject

@property (copy,nonatomic) NSString *operation;
@property(nonatomic) CGFloat currendOperand;

-(CGFloat)perfomOperand:(CGFloat)operand;
@end
