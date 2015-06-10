//
//  LKAlphaAndNumbericInputValidator.m
//  InputValidatorsExample
//
//  Created by Beniamin Sarkisyan on 09/06/15.
//  Copyright (c) 2015 Ramotion. All rights reserved.
//

#import "LKAlphaAndNumbericInputValidator.h"

@implementation LKAlphaAndNumbericInputValidator

- (id) init {
	self = [super init];
	if (self) {
		self.reason = NSLocalizedString(@"The input can contain only numerical values", @"Validator reason (Alert)");
		_regularExpression = @"^[0-9a-zA-Z]*$";
		_errorCode = InputValidationAlphabetAndNumericErrorCode;
	}
	
	return self;
}

@end
