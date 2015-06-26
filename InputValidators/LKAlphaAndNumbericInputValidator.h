//
//  LKAlphaAndNumbericInputValidator.h
//  InputValidatorsExample
//
//  Created by Beniamin Sarkisyan on 09/06/15.
//  Copyright (c) 2015 Ramotion. All rights reserved.
//

#import "LKRegularExpressionInputValidator.h"

@interface LKAlphaAndNumbericInputValidator : LKRegularExpressionInputValidator

@property (nonatomic, assign) BOOL onlyLatin;
@property (nonatomic, assign) BOOL onlyCyrillic;

@end
