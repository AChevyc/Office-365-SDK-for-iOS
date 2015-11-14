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


/** Implementation for MSDirectoryServicesServicePlanInfo
 *
 */
@implementation MSDirectoryServicesServicePlanInfo


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 

        if(_$$$_$$$propertiesNamesMappings==nil) {
    
        _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"servicePlanId", @"servicePlanId", @"servicePlanName", @"servicePlanName", nil];
        
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.DirectoryServices.ServicePlanInfo";

    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
        if(dic!=nil) {
		_servicePlanId = (![dic objectForKey: @"servicePlanId"] || [ [dic objectForKey: @"servicePlanId"] isKindOfClass:[NSNull class]] )?_servicePlanId:[[dic objectForKey: @"servicePlanId"] copy];
		_servicePlanName = (![dic objectForKey: @"servicePlanName"] || [ [dic objectForKey: @"servicePlanName"] isKindOfClass:[NSNull class]] )?_servicePlanName:[[dic objectForKey: @"servicePlanName"] copy];
    }
    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.servicePlanId copy];if (curVal!=nil) [dic setValue: curVal forKey: @"servicePlanId"];}
	{id curVal = [self.servicePlanName copy];if (curVal!=nil) [dic setValue: curVal forKey: @"servicePlanName"];}
    [dic setValue: @"#Microsoft.DirectoryServices.ServicePlanInfo" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.servicePlanId;
    if([self.updatedValues containsObject:@"servicePlanId"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"servicePlanId"];
            }
    }
	{id curVal = self.servicePlanName;
    if([self.updatedValues containsObject:@"servicePlanName"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"servicePlanName"];
            }
    }
    return dic;
}


/** Setter implementation for property servicePlanId
 *
 */
- (void) setServicePlanId: (NSString *) value {
    _servicePlanId = value;
    [self valueChangedFor:@"servicePlanId"];
}
       
/** Setter implementation for property servicePlanName
 *
 */
- (void) setServicePlanName: (NSString *) value {
    _servicePlanName = value;
    [self valueChangedFor:@"servicePlanName"];
}
       

@end
