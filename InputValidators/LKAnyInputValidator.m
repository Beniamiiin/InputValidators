//
//  LKAnyInputValidator.m
//  InputValidatorsExample
//
//  Created by Beniamin Sarkisyan on 26/06/15.
//  Copyright (c) 2015 Ramotion. All rights reserved.
//

#import "LKAnyInputValidator.h"

@implementation LKAnyInputValidator

- (id) init {
	self = [super init];
	if (self) {
		_errorCode = InputValidationAntErrorCode;
	}
	
	return self;
}

- (BOOL) validateInput:(NSString *)input error:(NSError **) error {
	if ( _onlyLatin )
	{
		self.reason = NSLocalizedString(@"The input can contain only latin letters", @"Validator reason (Alert)");
		_regularExpression = @"^[^а-яА-Я]*$";
	}
	else if ( _onlyCyrillic )
	{
		self.reason = NSLocalizedString(@"The input can contain only cyryllic letters", @"Validator reason (Alert)");
		_regularExpression = @"^[^a-zA-Z]*$";
	}
	else
	{
		return YES;
	}
	
	return [super validateInput:input error:error];
}

@end
