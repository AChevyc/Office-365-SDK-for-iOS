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


/** Implementation for MSGraphDeviceConfiguration
 *
 */
@implementation MSGraphDeviceConfiguration


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
        if(_$$$_$$$propertiesNamesMappings==nil) {
    
        _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"publicIssuerCertificates", @"publicIssuerCertificates", @"cloudPublicIssuerCertificates", @"cloudPublicIssuerCertificates", @"registrationQuota", @"registrationQuota", @"maximumRegistrationInactivityPeriod", @"maximumRegistrationInactivityPeriod", @"objectType", @"objectType", @"objectId", @"objectId", @"deletionTimestamp", @"deletionTimestamp", nil];
        
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.DeviceConfiguration";
        
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
        if(dic!=nil) {

        if([dic objectForKey: @"publicIssuerCertificates"] != [NSNull null]){
            _publicIssuerCertificates = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"publicIssuerCertificates"]) {
                [_publicIssuerCertificates addObject:[MSOrcObjectizer dataFromString:object]];
            }
            
            [(MSOrcChangesTrackingArray *)_publicIssuerCertificates resetChangedFlag];
        }
        

        if([dic objectForKey: @"cloudPublicIssuerCertificates"] != [NSNull null]){
            _cloudPublicIssuerCertificates = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"cloudPublicIssuerCertificates"]) {
                [_cloudPublicIssuerCertificates addObject:[MSOrcObjectizer dataFromString:object]];
            }
            
            [(MSOrcChangesTrackingArray *)_cloudPublicIssuerCertificates resetChangedFlag];
        }
        
		_registrationQuota = (![dic objectForKey: @"registrationQuota"] || [ [dic objectForKey: @"registrationQuota"] isKindOfClass:[NSNull class]] )?_registrationQuota:[[dic objectForKey: @"registrationQuota"] intValue];
		_maximumRegistrationInactivityPeriod = (![dic objectForKey: @"maximumRegistrationInactivityPeriod"] || [ [dic objectForKey: @"maximumRegistrationInactivityPeriod"] isKindOfClass:[NSNull class]] )?_maximumRegistrationInactivityPeriod:[[dic objectForKey: @"maximumRegistrationInactivityPeriod"] intValue];
		self.objectType = (![dic objectForKey: @"objectType"] || [ [dic objectForKey: @"objectType"] isKindOfClass:[NSNull class]] )?self.objectType:[[dic objectForKey: @"objectType"] copy];
		self.objectId = (![dic objectForKey: @"objectId"] || [ [dic objectForKey: @"objectId"] isKindOfClass:[NSNull class]] )?self.objectId:[[dic objectForKey: @"objectId"] copy];
		self.deletionTimestamp = (![dic objectForKey: @"deletionTimestamp"] || [ [dic objectForKey: @"deletionTimestamp"] isKindOfClass:[NSNull class]] )?self.deletionTimestamp:[MSOrcObjectizer dateFromString:[dic objectForKey: @"deletionTimestamp"]];
    }
    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.publicIssuerCertificates) {
       [curVal addObject:[MSOrcObjectizer stringFromData:obj]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"publicIssuerCertificates"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.cloudPublicIssuerCertificates) {
       [curVal addObject:[MSOrcObjectizer stringFromData:obj]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"cloudPublicIssuerCertificates"];}
	{[dic setValue: [NSNumber numberWithInt: self.registrationQuota] forKey: @"registrationQuota"];}
	{[dic setValue: [NSNumber numberWithInt: self.maximumRegistrationInactivityPeriod] forKey: @"maximumRegistrationInactivityPeriod"];}
	{id curVal = [self.objectType copy];if (curVal!=nil) [dic setValue: curVal forKey: @"objectType"];}
	{id curVal = [self.objectId copy];if (curVal!=nil) [dic setValue: curVal forKey: @"objectId"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.deletionTimestamp];if (curVal!=nil) [dic setValue: curVal forKey: @"deletionTimestamp"];}
    [dic setValue: @"#microsoft.graph.DeviceConfiguration" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.publicIssuerCertificates;
    if([self.updatedValues containsObject:@"publicIssuerCertificates"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[MSOrcObjectizer stringFromData:obj]];
    }
    
            [dic setValue: curArray forKey: @"publicIssuerCertificates"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.publicIssuerCertificates) {
       [curArray addObject:[MSOrcObjectizer stringFromData:obj]];
    }
    
                 [dic setValue: curArray forKey: @"publicIssuerCertificates"];
        }
        
            }}
	{id curVal = self.cloudPublicIssuerCertificates;
    if([self.updatedValues containsObject:@"cloudPublicIssuerCertificates"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[MSOrcObjectizer stringFromData:obj]];
    }
    
            [dic setValue: curArray forKey: @"cloudPublicIssuerCertificates"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.cloudPublicIssuerCertificates) {
       [curArray addObject:[MSOrcObjectizer stringFromData:obj]];
    }
    
                 [dic setValue: curArray forKey: @"cloudPublicIssuerCertificates"];
        }
        
            }}
 if([self.updatedValues containsObject:@"registrationQuota"])
            { [dic setValue: [NSNumber numberWithInt: self.registrationQuota] forKey: @"registrationQuota"];
} if([self.updatedValues containsObject:@"maximumRegistrationInactivityPeriod"])
            { [dic setValue: [NSNumber numberWithInt: self.maximumRegistrationInactivityPeriod] forKey: @"maximumRegistrationInactivityPeriod"];
}	{id curVal = self.objectType;
    if([self.updatedValues containsObject:@"objectType"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"objectType"];
            }
    }
	{id curVal = self.objectId;
    if([self.updatedValues containsObject:@"objectId"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"objectId"];
            }
    }
	{id curVal = self.deletionTimestamp;
    if([self.updatedValues containsObject:@"deletionTimestamp"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"deletionTimestamp"];
            }
    }
    return dic;
}


/** Setter implementation for property publicIssuerCertificates
 *
 */
- (void) setPublicIssuerCertificates: (NSMutableArray *) value {
    _publicIssuerCertificates = value;
    [self valueChangedFor:@"publicIssuerCertificates"];
}
       
/** Setter implementation for property cloudPublicIssuerCertificates
 *
 */
- (void) setCloudPublicIssuerCertificates: (NSMutableArray *) value {
    _cloudPublicIssuerCertificates = value;
    [self valueChangedFor:@"cloudPublicIssuerCertificates"];
}
       
/** Setter implementation for property registrationQuota
 *
 */
- (void) setRegistrationQuota: (int) value {
    _registrationQuota = value;
    [self valueChangedFor:@"registrationQuota"];
}
       
/** Setter implementation for property maximumRegistrationInactivityPeriod
 *
 */
- (void) setMaximumRegistrationInactivityPeriod: (int) value {
    _maximumRegistrationInactivityPeriod = value;
    [self valueChangedFor:@"maximumRegistrationInactivityPeriod"];
}
       

@end
