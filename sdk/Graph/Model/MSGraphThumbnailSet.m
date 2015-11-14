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


/** Implementation for MSGraphThumbnailSet
 *
 */
@implementation MSGraphThumbnailSet


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
        if(_$$$_$$$propertiesNamesMappings==nil) {
    
        _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"id", @"_id", @"large", @"large", @"medium", @"medium", @"small", @"small", @"source", @"source", nil];
        
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.thumbnailSet";
        
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
        if(dic!=nil) {
		__id = (![dic objectForKey: @"id"] || [ [dic objectForKey: @"id"] isKindOfClass:[NSNull class]] )?__id:[[dic objectForKey: @"id"] copy];
		_large = (![dic objectForKey: @"large"] || [ [dic objectForKey: @"large"] isKindOfClass:[NSNull class]] )?_large:[[MSGraphThumbnail alloc] initWithDictionary: [dic objectForKey: @"large"]];
		_medium = (![dic objectForKey: @"medium"] || [ [dic objectForKey: @"medium"] isKindOfClass:[NSNull class]] )?_medium:[[MSGraphThumbnail alloc] initWithDictionary: [dic objectForKey: @"medium"]];
		_small = (![dic objectForKey: @"small"] || [ [dic objectForKey: @"small"] isKindOfClass:[NSNull class]] )?_small:[[MSGraphThumbnail alloc] initWithDictionary: [dic objectForKey: @"small"]];
		_source = (![dic objectForKey: @"source"] || [ [dic objectForKey: @"source"] isKindOfClass:[NSNull class]] )?_source:[[MSGraphThumbnail alloc] initWithDictionary: [dic objectForKey: @"source"]];
    }
    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self._id copy];if (curVal!=nil) [dic setValue: curVal forKey: @"id"];}
	{id curVal = [self.large toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"large"];}
	{id curVal = [self.medium toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"medium"];}
	{id curVal = [self.small toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"small"];}
	{id curVal = [self.source toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"source"];}
    [dic setValue: @"#microsoft.graph.thumbnailSet" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self._id;
    if([self.updatedValues containsObject:@"id"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"id"];
            }
    }
	{id curVal = self.large;
    if([self.updatedValues containsObject:@"large"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"large"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"large"];
            }
        
            }}
	{id curVal = self.medium;
    if([self.updatedValues containsObject:@"medium"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"medium"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"medium"];
            }
        
            }}
	{id curVal = self.small;
    if([self.updatedValues containsObject:@"small"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"small"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"small"];
            }
        
            }}
	{id curVal = self.source;
    if([self.updatedValues containsObject:@"source"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"source"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"source"];
            }
        
            }}
    return dic;
}


/** Setter implementation for property _id
 *
 */
- (void) setId: (NSString *) value {
    __id = value;
    [self valueChangedFor:@"id"];
}
       
/** Setter implementation for property large
 *
 */
- (void) setLarge: (MSGraphThumbnail *) value {
    _large = value;
    [self valueChangedFor:@"large"];
}
       
/** Setter implementation for property medium
 *
 */
- (void) setMedium: (MSGraphThumbnail *) value {
    _medium = value;
    [self valueChangedFor:@"medium"];
}
       
/** Setter implementation for property small
 *
 */
- (void) setSmall: (MSGraphThumbnail *) value {
    _small = value;
    [self valueChangedFor:@"small"];
}
       
/** Setter implementation for property source
 *
 */
- (void) setSource: (MSGraphThumbnail *) value {
    _source = value;
    [self valueChangedFor:@"source"];
}
       

@end
