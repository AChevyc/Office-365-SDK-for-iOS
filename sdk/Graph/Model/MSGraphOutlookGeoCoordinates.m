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


/** Implementation for MSGraphOutlookGeoCoordinates
 *
 */
@implementation MSGraphOutlookGeoCoordinates


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 

        if(_$$$_$$$propertiesNamesMappings==nil) {
    
        _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"Altitude", @"altitude", @"Latitude", @"latitude", @"Longitude", @"longitude", @"Accuracy", @"accuracy", @"AltitudeAccuracy", @"altitudeAccuracy", nil];
        
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.outlookGeoCoordinates";

    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
        if(dic!=nil) {
		_altitude = (![dic objectForKey: @"Altitude"] || [ [dic objectForKey: @"Altitude"] isKindOfClass:[NSNull class]] )?_altitude:[[dic objectForKey: @"Altitude"] doubleValue];
		_latitude = (![dic objectForKey: @"Latitude"] || [ [dic objectForKey: @"Latitude"] isKindOfClass:[NSNull class]] )?_latitude:[[dic objectForKey: @"Latitude"] doubleValue];
		_longitude = (![dic objectForKey: @"Longitude"] || [ [dic objectForKey: @"Longitude"] isKindOfClass:[NSNull class]] )?_longitude:[[dic objectForKey: @"Longitude"] doubleValue];
		_accuracy = (![dic objectForKey: @"Accuracy"] || [ [dic objectForKey: @"Accuracy"] isKindOfClass:[NSNull class]] )?_accuracy:[[dic objectForKey: @"Accuracy"] doubleValue];
		_altitudeAccuracy = (![dic objectForKey: @"AltitudeAccuracy"] || [ [dic objectForKey: @"AltitudeAccuracy"] isKindOfClass:[NSNull class]] )?_altitudeAccuracy:[[dic objectForKey: @"AltitudeAccuracy"] doubleValue];
    }
    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{[dic setValue: [NSNumber numberWithDouble: self.altitude] forKey: @"Altitude"];}
	{[dic setValue: [NSNumber numberWithDouble: self.latitude] forKey: @"Latitude"];}
	{[dic setValue: [NSNumber numberWithDouble: self.longitude] forKey: @"Longitude"];}
	{[dic setValue: [NSNumber numberWithDouble: self.accuracy] forKey: @"Accuracy"];}
	{[dic setValue: [NSNumber numberWithDouble: self.altitudeAccuracy] forKey: @"AltitudeAccuracy"];}
    [dic setValue: @"#microsoft.graph.outlookGeoCoordinates" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

 if([self.updatedValues containsObject:@"Altitude"])
            { [dic setValue: [NSNumber numberWithDouble: self.altitude] forKey: @"Altitude"];
} if([self.updatedValues containsObject:@"Latitude"])
            { [dic setValue: [NSNumber numberWithDouble: self.latitude] forKey: @"Latitude"];
} if([self.updatedValues containsObject:@"Longitude"])
            { [dic setValue: [NSNumber numberWithDouble: self.longitude] forKey: @"Longitude"];
} if([self.updatedValues containsObject:@"Accuracy"])
            { [dic setValue: [NSNumber numberWithDouble: self.accuracy] forKey: @"Accuracy"];
} if([self.updatedValues containsObject:@"AltitudeAccuracy"])
            { [dic setValue: [NSNumber numberWithDouble: self.altitudeAccuracy] forKey: @"AltitudeAccuracy"];
}    return dic;
}


/** Setter implementation for property altitude
 *
 */
- (void) setAltitude: (double) value {
    _altitude = value;
    [self valueChangedFor:@"Altitude"];
}
       
/** Setter implementation for property latitude
 *
 */
- (void) setLatitude: (double) value {
    _latitude = value;
    [self valueChangedFor:@"Latitude"];
}
       
/** Setter implementation for property longitude
 *
 */
- (void) setLongitude: (double) value {
    _longitude = value;
    [self valueChangedFor:@"Longitude"];
}
       
/** Setter implementation for property accuracy
 *
 */
- (void) setAccuracy: (double) value {
    _accuracy = value;
    [self valueChangedFor:@"Accuracy"];
}
       
/** Setter implementation for property altitudeAccuracy
 *
 */
- (void) setAltitudeAccuracy: (double) value {
    _altitudeAccuracy = value;
    [self valueChangedFor:@"AltitudeAccuracy"];
}
       

@end
