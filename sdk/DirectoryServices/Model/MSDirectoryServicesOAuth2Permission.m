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



#import "MSDirectoryServicesModels.h"
#import "core/MSOrcObjectizer.h"


/** Implementation for MSDirectoryServicesOAuth2Permission
 *
 */
@implementation MSDirectoryServicesOAuth2Permission


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 

        if(_$$$_$$$propertiesNamesMappings==nil) {
    
        _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"adminConsentDescription", @"adminConsentDescription", @"adminConsentDisplayName", @"adminConsentDisplayName", @"id", @"_id", @"isEnabled", @"isEnabled", @"type", @"type", @"userConsentDescription", @"userConsentDescription", @"userConsentDisplayName", @"userConsentDisplayName", @"value", @"value", nil];
        
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.DirectoryServices.OAuth2Permission";

    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
        if(dic!=nil) {
		_adminConsentDescription = (![dic objectForKey: @"adminConsentDescription"] || [ [dic objectForKey: @"adminConsentDescription"] isKindOfClass:[NSNull class]] )?_adminConsentDescription:[[dic objectForKey: @"adminConsentDescription"] copy];
		_adminConsentDisplayName = (![dic objectForKey: @"adminConsentDisplayName"] || [ [dic objectForKey: @"adminConsentDisplayName"] isKindOfClass:[NSNull class]] )?_adminConsentDisplayName:[[dic objectForKey: @"adminConsentDisplayName"] copy];
		__id = (![dic objectForKey: @"id"] || [ [dic objectForKey: @"id"] isKindOfClass:[NSNull class]] )?__id:[[dic objectForKey: @"id"] copy];
		_isEnabled = (![dic objectForKey: @"isEnabled"] || [ [dic objectForKey: @"isEnabled"] isKindOfClass:[NSNull class]] )?_isEnabled:[[dic objectForKey: @"isEnabled"] boolValue];
		_type = (![dic objectForKey: @"type"] || [ [dic objectForKey: @"type"] isKindOfClass:[NSNull class]] )?_type:[[dic objectForKey: @"type"] copy];
		_userConsentDescription = (![dic objectForKey: @"userConsentDescription"] || [ [dic objectForKey: @"userConsentDescription"] isKindOfClass:[NSNull class]] )?_userConsentDescription:[[dic objectForKey: @"userConsentDescription"] copy];
		_userConsentDisplayName = (![dic objectForKey: @"userConsentDisplayName"] || [ [dic objectForKey: @"userConsentDisplayName"] isKindOfClass:[NSNull class]] )?_userConsentDisplayName:[[dic objectForKey: @"userConsentDisplayName"] copy];
		_value = (![dic objectForKey: @"value"] || [ [dic objectForKey: @"value"] isKindOfClass:[NSNull class]] )?_value:[[dic objectForKey: @"value"] copy];
    }
    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.adminConsentDescription copy];if (curVal!=nil) [dic setValue: curVal forKey: @"adminConsentDescription"];}
	{id curVal = [self.adminConsentDisplayName copy];if (curVal!=nil) [dic setValue: curVal forKey: @"adminConsentDisplayName"];}
	{id curVal = [self._id copy];if (curVal!=nil) [dic setValue: curVal forKey: @"id"];}
	{[dic setValue: (self.isEnabled?@"true":@"false") forKey: @"isEnabled"];}
	{id curVal = [self.type copy];if (curVal!=nil) [dic setValue: curVal forKey: @"type"];}
	{id curVal = [self.userConsentDescription copy];if (curVal!=nil) [dic setValue: curVal forKey: @"userConsentDescription"];}
	{id curVal = [self.userConsentDisplayName copy];if (curVal!=nil) [dic setValue: curVal forKey: @"userConsentDisplayName"];}
	{id curVal = [self.value copy];if (curVal!=nil) [dic setValue: curVal forKey: @"value"];}
    [dic setValue: @"#Microsoft.DirectoryServices.OAuth2Permission" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.adminConsentDescription;
    if([self.updatedValues containsObject:@"adminConsentDescription"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"adminConsentDescription"];
            }
    }
	{id curVal = self.adminConsentDisplayName;
    if([self.updatedValues containsObject:@"adminConsentDisplayName"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"adminConsentDisplayName"];
            }
    }
	{id curVal = self._id;
    if([self.updatedValues containsObject:@"id"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"id"];
            }
    }
 if([self.updatedValues containsObject:@"isEnabled"])
            { [dic setValue: (self.isEnabled?@"true":@"false") forKey: @"isEnabled"];
}	{id curVal = self.type;
    if([self.updatedValues containsObject:@"type"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"type"];
            }
    }
	{id curVal = self.userConsentDescription;
    if([self.updatedValues containsObject:@"userConsentDescription"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"userConsentDescription"];
            }
    }
	{id curVal = self.userConsentDisplayName;
    if([self.updatedValues containsObject:@"userConsentDisplayName"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"userConsentDisplayName"];
            }
    }
	{id curVal = self.value;
    if([self.updatedValues containsObject:@"value"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"value"];
            }
    }
    return dic;
}


/** Setter implementation for property adminConsentDescription
 *
 */
- (void) setAdminConsentDescription: (NSString *) value {
    _adminConsentDescription = value;
    [self valueChangedFor:@"adminConsentDescription"];
}
       
/** Setter implementation for property adminConsentDisplayName
 *
 */
- (void) setAdminConsentDisplayName: (NSString *) value {
    _adminConsentDisplayName = value;
    [self valueChangedFor:@"adminConsentDisplayName"];
}
       
/** Setter implementation for property _id
 *
 */
- (void) setId: (NSString *) value {
    __id = value;
    [self valueChangedFor:@"id"];
}
       
/** Setter implementation for property isEnabled
 *
 */
- (void) setIsEnabled: (bool) value {
    _isEnabled = value;
    [self valueChangedFor:@"isEnabled"];
}
       
/** Setter implementation for property type
 *
 */
- (void) setType: (NSString *) value {
    _type = value;
    [self valueChangedFor:@"type"];
}
       
/** Setter implementation for property userConsentDescription
 *
 */
- (void) setUserConsentDescription: (NSString *) value {
    _userConsentDescription = value;
    [self valueChangedFor:@"userConsentDescription"];
}
       
/** Setter implementation for property userConsentDisplayName
 *
 */
- (void) setUserConsentDisplayName: (NSString *) value {
    _userConsentDisplayName = value;
    [self valueChangedFor:@"userConsentDisplayName"];
}
       
/** Setter implementation for property value
 *
 */
- (void) setValue: (NSString *) value {
    _value = value;
    [self valueChangedFor:@"value"];
}
       

@end
