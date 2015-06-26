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
		self.reason = NSLocalizedString(@"The input can contain only letters and numerical values", @"Validator reason (Alert)");
		_errorCode = InputValidationAlphabetAndNumericErrorCode;
	}
	
	return self;
}

- (BOOL) validateInput:(NSString *)input error:(NSError **) error {
	_regularExpression = @"^[0-9a-zA-Z\\p{Cyrillic}]*$";
	
	if ( _onlyLatin )
	{
		self.reason = NSLocalizedString(@"The input can contain only latin letters and numerical values", @"Validator reason (Alert)");
		_regularExpression = @"^[0-9a-zA-Z]*$";
	}
	else if ( _onlyCyrillic )
	{
		self.reason = NSLocalizedString(@"The input can contain only cyryllic letters and numerical values", @"Validator reason (Alert)");
		_regularExpression = @"^[0-9а-яА-Я]*$";
	}
	
	return [super validateInput:input error:error];
}

@end
