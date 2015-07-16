/*******************************************************************************
**NOTE** This code was generated by a tool and will occasionally be
overwritten. We welcome comments and issues regarding this code; they will be
addressed in the generation tool. If you wish to submit pull requests, please
do so for the templates in that tool.

This code was generated by Vipr (https://github.com/microsoft/vipr) using
the T4TemplateWriter (https://github.com/msopentech/vipr-t4templatewriter).

Copyright (c) Microsoft Open Technologies, Inc. All Rights Reserved.
Licensed under the Apache License 2.0; see LICENSE in the source repository
root for authoritative license information.﻿
******************************************************************************/
#import "MSDirectoryModels.h"

/**
* The implementation file for type AlternativeSecurityId.
*/

@implementation MSDirectoryAlternativeSecurityId	

@synthesize odataType = _odataType;
@synthesize type = _type;
@synthesize identityProvider = _identityProvider;
@synthesize key = _key;

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.DirectoryServices.AlternativeSecurityId";
	}

	return self;
}

- (void)setType:(int ) type {
    _type = type;
    [self valueChangedForInt:type forProperty:@"type"];
}
    
- (void)setIdentityProvider:(NSString *) identityProvider {
    _identityProvider = identityProvider;
	[self valueChanged:identityProvider forProperty:@"identityProvider"];
}
    
- (void)setKey:(NSData *) key {
    _key = key;
	[self valueChanged:key forProperty:@"key"];
}
    
@end