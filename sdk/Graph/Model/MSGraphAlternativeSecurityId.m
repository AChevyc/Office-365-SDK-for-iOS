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



#import "MSGraphModels.h"
#import "core/MSOrcObjectizer.h"


/** Implementation for MSGraphAlternativeSecurityId
 *
 */
@implementation MSGraphAlternativeSecurityId


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 

        if(_$$$_$$$propertiesNamesMappings==nil) {
    
        _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"type", @"type", @"identityProvider", @"identityProvider", @"key", @"key", nil];
        
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.AlternativeSecurityId";

    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
        if(dic!=nil) {
		_type = (![dic objectForKey: @"type"] || [ [dic objectForKey: @"type"] isKindOfClass:[NSNull class]] )?_type:[[dic objectForKey: @"type"] intValue];
		_identityProvider = (![dic objectForKey: @"identityProvider"] || [ [dic objectForKey: @"identityProvider"] isKindOfClass:[NSNull class]] )?_identityProvider:[[dic objectForKey: @"identityProvider"] copy];
		_key = (![dic objectForKey: @"key"] || [ [dic objectForKey: @"key"] isKindOfClass:[NSNull class]] )?_key:[MSOrcObjectizer dataFromString:[dic objectForKey: @"key"]];
    }
    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{[dic setValue: [NSNumber numberWithInt: self.type] forKey: @"type"];}
	{id curVal = [self.identityProvider copy];if (curVal!=nil) [dic setValue: curVal forKey: @"identityProvider"];}
	{id curVal = [MSOrcObjectizer stringFromData:self.key];if (curVal!=nil) [dic setValue: curVal forKey: @"key"];}
    [dic setValue: @"#microsoft.graph.AlternativeSecurityId" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

 if([self.updatedValues containsObject:@"type"])
            { [dic setValue: [NSNumber numberWithInt: self.type] forKey: @"type"];
}	{id curVal = self.identityProvider;
    if([self.updatedValues containsObject:@"identityProvider"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"identityProvider"];
            }
    }
	{id curVal = self.key;
    if([self.updatedValues containsObject:@"key"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromData:curVal] forKey: @"key"];
            }
    }
    return dic;
}


/** Setter implementation for property type
 *
 */
- (void) setType: (int) value {
    _type = value;
    [self valueChangedFor:@"type"];
}
       
/** Setter implementation for property identityProvider
 *
 */
- (void) setIdentityProvider: (NSString *) value {
    _identityProvider = value;
    [self valueChangedFor:@"identityProvider"];
}
       
/** Setter implementation for property key
 *
 */
- (void) setKey: (NSData *) value {
    _key = value;
    [self valueChangedFor:@"key"];
}
       

@end
