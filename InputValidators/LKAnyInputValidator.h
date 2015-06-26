//
//  LKAnyInputValidator.h
//  InputValidatorsExample
//
//  Created by Beniamin Sarkisyan on 26/06/15.
//  Copyright (c) 2015 Ramotion. All rights reserved.
//

#import "LKRegularExpressionInputValidator.h"

@interface LKAnyInputValidator : LKRegularExpressionInputValidator

@property (nonatomic, assign) BOOL onlyLatin;
@property (nonatomic, assign) BOOL onlyCyrillic;

@end
