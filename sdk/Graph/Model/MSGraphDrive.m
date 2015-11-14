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


/** Implementation for MSGraphDrive
 *
 */
@implementation MSGraphDrive


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
        if(_$$$_$$$propertiesNamesMappings==nil) {
    
        _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"id", @"_id", @"driveType", @"driveType", @"owner", @"owner", @"quota", @"quota", @"items", @"items", @"shared", @"shared", @"special", @"special", @"root", @"root", nil];
        
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.drive";
        
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
        if(dic!=nil) {
		__id = (![dic objectForKey: @"id"] || [ [dic objectForKey: @"id"] isKindOfClass:[NSNull class]] )?__id:[[dic objectForKey: @"id"] copy];
		_driveType = (![dic objectForKey: @"driveType"] || [ [dic objectForKey: @"driveType"] isKindOfClass:[NSNull class]] )?_driveType:[[dic objectForKey: @"driveType"] copy];
		_owner = (![dic objectForKey: @"owner"] || [ [dic objectForKey: @"owner"] isKindOfClass:[NSNull class]] )?_owner:[[MSGraphIdentitySet alloc] initWithDictionary: [dic objectForKey: @"owner"]];
		_quota = (![dic objectForKey: @"quota"] || [ [dic objectForKey: @"quota"] isKindOfClass:[NSNull class]] )?_quota:[[MSGraphQuota alloc] initWithDictionary: [dic objectForKey: @"quota"]];

        if([dic objectForKey: @"items"] != [NSNull null]){
            _items = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"items"]) {
                [_items addObject:[[MSGraphItem alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)_items resetChangedFlag];
        }
        

        if([dic objectForKey: @"shared"] != [NSNull null]){
            _shared = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"shared"]) {
                [_shared addObject:[[MSGraphItem alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)_shared resetChangedFlag];
        }
        

        if([dic objectForKey: @"special"] != [NSNull null]){
            _special = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"special"]) {
                [_special addObject:[[MSGraphItem alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)_special resetChangedFlag];
        }
        
		_root = (![dic objectForKey: @"root"] || [ [dic objectForKey: @"root"] isKindOfClass:[NSNull class]] )?_root:[[MSGraphItem alloc] initWithDictionary: [dic objectForKey: @"root"]];
    }
    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self._id copy];if (curVal!=nil) [dic setValue: curVal forKey: @"id"];}
	{id curVal = [self.driveType copy];if (curVal!=nil) [dic setValue: curVal forKey: @"driveType"];}
	{id curVal = [self.owner toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"owner"];}
	{id curVal = [self.quota toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"quota"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.items) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"items"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.shared) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"shared"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.special) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"special"];}
	{id curVal = [self.root toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"root"];}
    [dic setValue: @"#microsoft.graph.drive" forKey: @"@odata.type"];

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
	{id curVal = self.driveType;
    if([self.updatedValues containsObject:@"driveType"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"driveType"];
            }
    }
	{id curVal = self.owner;
    if([self.updatedValues containsObject:@"owner"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"owner"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"owner"];
            }
        
            }}
	{id curVal = self.quota;
    if([self.updatedValues containsObject:@"quota"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"quota"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"quota"];
            }
        
            }}
	{id curVal = self.items;
    if([self.updatedValues containsObject:@"items"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"items"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.items) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"items"];
        }
        
            }}
	{id curVal = self.shared;
    if([self.updatedValues containsObject:@"shared"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"shared"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.shared) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"shared"];
        }
        
            }}
	{id curVal = self.special;
    if([self.updatedValues containsObject:@"special"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"special"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.special) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"special"];
        }
        
            }}
	{id curVal = self.root;
    if([self.updatedValues containsObject:@"root"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"root"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"root"];
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
       
/** Setter implementation for property driveType
 *
 */
- (void) setDriveType: (NSString *) value {
    _driveType = value;
    [self valueChangedFor:@"driveType"];
}
       
/** Setter implementation for property owner
 *
 */
- (void) setOwner: (MSGraphIdentitySet *) value {
    _owner = value;
    [self valueChangedFor:@"owner"];
}
       
/** Setter implementation for property quota
 *
 */
- (void) setQuota: (MSGraphQuota *) value {
    _quota = value;
    [self valueChangedFor:@"quota"];
}
       
/** Setter implementation for property items
 *
 */
- (void) setItems: (NSMutableArray *) value {
    _items = value;
    [self valueChangedFor:@"items"];
}
       
/** Setter implementation for property shared
 *
 */
- (void) setShared: (NSMutableArray *) value {
    _shared = value;
    [self valueChangedFor:@"shared"];
}
       
/** Setter implementation for property special
 *
 */
- (void) setSpecial: (NSMutableArray *) value {
    _special = value;
    [self valueChangedFor:@"special"];
}
       
/** Setter implementation for property root
 *
 */
- (void) setRoot: (MSGraphItem *) value {
    _root = value;
    [self valueChangedFor:@"root"];
}
       

@end
