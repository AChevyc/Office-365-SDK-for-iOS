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


/** Implementation for MSGraphResponseStatus
 *
 */
@implementation MSGraphResponseStatus


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 

        if(_$$$_$$$propertiesNamesMappings==nil) {
    
        _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"Response", @"response", @"Time", @"time", nil];
        
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.ResponseStatus";

    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
        if(dic!=nil) {
		_response = (![dic objectForKey: @"Response"] || [ [dic objectForKey: @"Response"] isKindOfClass:[NSNull class]] )?_response:[MSGraphResponseTypeSerializer fromString:[dic objectForKey: @"Response"]];
		_time = (![dic objectForKey: @"Time"] || [ [dic objectForKey: @"Time"] isKindOfClass:[NSNull class]] )?_time:[MSOrcObjectizer dateFromString:[dic objectForKey: @"Time"]];
    }
    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{[dic setValue: [MSGraphResponseTypeSerializer toString:self.response] forKey: @"Response"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.time];if (curVal!=nil) [dic setValue: curVal forKey: @"Time"];}
    [dic setValue: @"#microsoft.graph.ResponseStatus" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

 if([self.updatedValues containsObject:@"Response"])
            { [dic setValue: [MSGraphResponseTypeSerializer toString:self.response] forKey: @"Response"];
}	{id curVal = self.time;
    if([self.updatedValues containsObject:@"Time"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"Time"];
            }
    }
    return dic;
}


/** Setter implementation for property response
 *
 */
- (void) setResponse: (MSGraphResponseType) value {
    _response = value;
    [self valueChangedFor:@"Response"];
}
       

- (void)setResponseString:(NSString *)string {
        
    _response = [MSGraphResponseTypeSerializer fromString:string];
    [self valueChangedFor:@"Response"]; 
}

/** Setter implementation for property time
 *
 */
- (void) setTime: (NSDate *) value {
    _time = value;
    [self valueChangedFor:@"Time"];
}
       

@end
