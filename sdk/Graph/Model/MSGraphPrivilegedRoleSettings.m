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


/** Implementation for MSGraphPrivilegedRoleSettings
 *
 */
@implementation MSGraphPrivilegedRoleSettings


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
        if(_$$$_$$$propertiesNamesMappings==nil) {
    
        _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"MinElevationDuration", @"minElevationDuration", @"MaxElavationDuration", @"maxElavationDuration", @"ElevationDuration", @"elevationDuration", @"RoleId", @"roleId", @"NotificationToUserOnElevation", @"notificationToUserOnElevation", @"TicketingInfoOnElevation", @"ticketingInfoOnElevation", @"MfaOnElevation", @"mfaOnElevation", @"LastGlobalAdmin", @"lastGlobalAdmin", nil];
        
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.PrivilegedRoleSettings";
        
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
        if(dic!=nil) {
		_minElevationDuration = (![dic objectForKey: @"MinElevationDuration"] || [ [dic objectForKey: @"MinElevationDuration"] isKindOfClass:[NSNull class]] )?_minElevationDuration:[[dic objectForKey: @"MinElevationDuration"] intValue];
		_maxElavationDuration = (![dic objectForKey: @"MaxElavationDuration"] || [ [dic objectForKey: @"MaxElavationDuration"] isKindOfClass:[NSNull class]] )?_maxElavationDuration:[[dic objectForKey: @"MaxElavationDuration"] intValue];
		_elevationDuration = (![dic objectForKey: @"ElevationDuration"] || [ [dic objectForKey: @"ElevationDuration"] isKindOfClass:[NSNull class]] )?_elevationDuration:[[dic objectForKey: @"ElevationDuration"] intValue];
		_roleId = (![dic objectForKey: @"RoleId"] || [ [dic objectForKey: @"RoleId"] isKindOfClass:[NSNull class]] )?_roleId:[[dic objectForKey: @"RoleId"] copy];
		_notificationToUserOnElevation = (![dic objectForKey: @"NotificationToUserOnElevation"] || [ [dic objectForKey: @"NotificationToUserOnElevation"] isKindOfClass:[NSNull class]] )?_notificationToUserOnElevation:[[dic objectForKey: @"NotificationToUserOnElevation"] boolValue];
		_ticketingInfoOnElevation = (![dic objectForKey: @"TicketingInfoOnElevation"] || [ [dic objectForKey: @"TicketingInfoOnElevation"] isKindOfClass:[NSNull class]] )?_ticketingInfoOnElevation:[[dic objectForKey: @"TicketingInfoOnElevation"] boolValue];
		_mfaOnElevation = (![dic objectForKey: @"MfaOnElevation"] || [ [dic objectForKey: @"MfaOnElevation"] isKindOfClass:[NSNull class]] )?_mfaOnElevation:[[dic objectForKey: @"MfaOnElevation"] boolValue];
		_lastGlobalAdmin = (![dic objectForKey: @"LastGlobalAdmin"] || [ [dic objectForKey: @"LastGlobalAdmin"] isKindOfClass:[NSNull class]] )?_lastGlobalAdmin:[[dic objectForKey: @"LastGlobalAdmin"] boolValue];
    }
    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{[dic setValue: [NSNumber numberWithInt: self.minElevationDuration] forKey: @"MinElevationDuration"];}
	{[dic setValue: [NSNumber numberWithInt: self.maxElavationDuration] forKey: @"MaxElavationDuration"];}
	{[dic setValue: [NSNumber numberWithInt: self.elevationDuration] forKey: @"ElevationDuration"];}
	{id curVal = [self.roleId copy];if (curVal!=nil) [dic setValue: curVal forKey: @"RoleId"];}
	{[dic setValue: (self.notificationToUserOnElevation?@"true":@"false") forKey: @"NotificationToUserOnElevation"];}
	{[dic setValue: (self.ticketingInfoOnElevation?@"true":@"false") forKey: @"TicketingInfoOnElevation"];}
	{[dic setValue: (self.mfaOnElevation?@"true":@"false") forKey: @"MfaOnElevation"];}
	{[dic setValue: (self.lastGlobalAdmin?@"true":@"false") forKey: @"LastGlobalAdmin"];}
    [dic setValue: @"#microsoft.graph.PrivilegedRoleSettings" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

 if([self.updatedValues containsObject:@"MinElevationDuration"])
            { [dic setValue: [NSNumber numberWithInt: self.minElevationDuration] forKey: @"MinElevationDuration"];
} if([self.updatedValues containsObject:@"MaxElavationDuration"])
            { [dic setValue: [NSNumber numberWithInt: self.maxElavationDuration] forKey: @"MaxElavationDuration"];
} if([self.updatedValues containsObject:@"ElevationDuration"])
            { [dic setValue: [NSNumber numberWithInt: self.elevationDuration] forKey: @"ElevationDuration"];
}	{id curVal = self.roleId;
    if([self.updatedValues containsObject:@"RoleId"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"RoleId"];
            }
    }
 if([self.updatedValues containsObject:@"NotificationToUserOnElevation"])
            { [dic setValue: (self.notificationToUserOnElevation?@"true":@"false") forKey: @"NotificationToUserOnElevation"];
} if([self.updatedValues containsObject:@"TicketingInfoOnElevation"])
            { [dic setValue: (self.ticketingInfoOnElevation?@"true":@"false") forKey: @"TicketingInfoOnElevation"];
} if([self.updatedValues containsObject:@"MfaOnElevation"])
            { [dic setValue: (self.mfaOnElevation?@"true":@"false") forKey: @"MfaOnElevation"];
} if([self.updatedValues containsObject:@"LastGlobalAdmin"])
            { [dic setValue: (self.lastGlobalAdmin?@"true":@"false") forKey: @"LastGlobalAdmin"];
}    return dic;
}


/** Setter implementation for property minElevationDuration
 *
 */
- (void) setMinElevationDuration: (NSTimeInterval) value {
    _minElevationDuration = value;
    [self valueChangedFor:@"MinElevationDuration"];
}
       
/** Setter implementation for property maxElavationDuration
 *
 */
- (void) setMaxElavationDuration: (NSTimeInterval) value {
    _maxElavationDuration = value;
    [self valueChangedFor:@"MaxElavationDuration"];
}
       
/** Setter implementation for property elevationDuration
 *
 */
- (void) setElevationDuration: (NSTimeInterval) value {
    _elevationDuration = value;
    [self valueChangedFor:@"ElevationDuration"];
}
       
/** Setter implementation for property roleId
 *
 */
- (void) setRoleId: (NSString *) value {
    _roleId = value;
    [self valueChangedFor:@"RoleId"];
}
       
/** Setter implementation for property notificationToUserOnElevation
 *
 */
- (void) setNotificationToUserOnElevation: (bool) value {
    _notificationToUserOnElevation = value;
    [self valueChangedFor:@"NotificationToUserOnElevation"];
}
       
/** Setter implementation for property ticketingInfoOnElevation
 *
 */
- (void) setTicketingInfoOnElevation: (bool) value {
    _ticketingInfoOnElevation = value;
    [self valueChangedFor:@"TicketingInfoOnElevation"];
}
       
/** Setter implementation for property mfaOnElevation
 *
 */
- (void) setMfaOnElevation: (bool) value {
    _mfaOnElevation = value;
    [self valueChangedFor:@"MfaOnElevation"];
}
       
/** Setter implementation for property lastGlobalAdmin
 *
 */
- (void) setLastGlobalAdmin: (bool) value {
    _lastGlobalAdmin = value;
    [self valueChangedFor:@"LastGlobalAdmin"];
}
       

@end
