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


/** Implementation for MSGraphLocationConstraint
 *
 */
@implementation MSGraphLocationConstraint


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 

        if(_$$$_$$$propertiesNamesMappings==nil) {
    
        _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"IsRequired", @"isRequired", @"SuggestLocation", @"suggestLocation", @"Locations", @"locations", nil];
        
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.LocationConstraint";

    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
        if(dic!=nil) {
		_isRequired = (![dic objectForKey: @"IsRequired"] || [ [dic objectForKey: @"IsRequired"] isKindOfClass:[NSNull class]] )?_isRequired:[[dic objectForKey: @"IsRequired"] boolValue];
		_suggestLocation = (![dic objectForKey: @"SuggestLocation"] || [ [dic objectForKey: @"SuggestLocation"] isKindOfClass:[NSNull class]] )?_suggestLocation:[[dic objectForKey: @"SuggestLocation"] boolValue];

        if([dic objectForKey: @"Locations"] != [NSNull null]){
            _locations = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"Locations"]) {
                [_locations addObject:[[MSGraphLocation alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)_locations resetChangedFlag];
        }
        
    }
    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{[dic setValue: (self.isRequired?@"true":@"false") forKey: @"IsRequired"];}
	{[dic setValue: (self.suggestLocation?@"true":@"false") forKey: @"SuggestLocation"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.locations) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"Locations"];}
    [dic setValue: @"#microsoft.graph.LocationConstraint" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

 if([self.updatedValues containsObject:@"IsRequired"])
            { [dic setValue: (self.isRequired?@"true":@"false") forKey: @"IsRequired"];
} if([self.updatedValues containsObject:@"SuggestLocation"])
            { [dic setValue: (self.suggestLocation?@"true":@"false") forKey: @"SuggestLocation"];
}	{id curVal = self.locations;
    if([self.updatedValues containsObject:@"Locations"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"Locations"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.locations) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"Locations"];
        }
        
            }}
    return dic;
}


/** Setter implementation for property isRequired
 *
 */
- (void) setIsRequired: (bool) value {
    _isRequired = value;
    [self valueChangedFor:@"IsRequired"];
}
       
/** Setter implementation for property suggestLocation
 *
 */
- (void) setSuggestLocation: (bool) value {
    _suggestLocation = value;
    [self valueChangedFor:@"SuggestLocation"];
}
       
/** Setter implementation for property locations
 *
 */
- (void) setLocations: (NSMutableArray *) value {
    _locations = value;
    [self valueChangedFor:@"Locations"];
}
       

@end
