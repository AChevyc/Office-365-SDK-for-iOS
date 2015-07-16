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

#import <Foundation/Foundation.h>
#import "MSDirectoryDirectoryObject.h"

/**
* The header for type ExtensionProperty.
*/

@interface MSDirectoryExtensionProperty : MSDirectoryDirectoryObject

@property (copy, nonatomic, readwrite, getter=appDisplayName, setter=setAppDisplayName:) NSString *appDisplayName;
@property (copy, nonatomic, readwrite, getter=name, setter=setName:) NSString *name;
@property (copy, nonatomic, readwrite, getter=dataType, setter=setDataType:) NSString *dataType;
@property (nonatomic, getter=isSyncedFromOnPremises, setter=setIsSyncedFromOnPremises:) BOOL isSyncedFromOnPremises;
@property (copy, nonatomic, readwrite, getter=targetObjects, setter=setTargetObjects:) NSMutableArray *targetObjects;

@end