//
//  LKCardNumberValidator.m
//  InputValidatorsExample
//
//  Created by Beniamin Sarkisyan on 21.11.14.
//  Copyright (c) 2014 Ramotion. All rights reserved.
//

#import "LKCardNumberValidator.h"

@implementation LKCardNumberValidator

- (id) init {
	self = [super init];
	if (self) {
		self.reason = NSLocalizedString(@"Card number is incorrect", @"Validator reason (Alert)");
		_regularExpression = @"[0-9]{4}-[0-9]{4}-[0-9]{4}-[0-9]{4}";
		_errorCode = InputValidationCardErrorCode;
	}
	
	return self;
}

@end
