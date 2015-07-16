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
@class MSDirectorySubscribedSkuFetcher;

#import <core/core.h>
#import "MSDirectoryModels.h"

/**
* The header for type MSDirectorySubscribedSkuCollectionFetcher.
*/

@interface MSDirectorySubscribedSkuCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (MSDirectorySubscribedSkuFetcher *)getById:(NSString *)Id;
- (void)add:(MSDirectorySubscribedSku *)entity callback:(void (^)(MSDirectorySubscribedSku *subscribedSku, MSOrcError *error))callback;

- (MSDirectorySubscribedSkuCollectionFetcher *)select:(NSString *)params;
- (MSDirectorySubscribedSkuCollectionFetcher *)filter:(NSString *)params;
- (MSDirectorySubscribedSkuCollectionFetcher *)search:(NSString *)params;
- (MSDirectorySubscribedSkuCollectionFetcher *)top:(int)value;
- (MSDirectorySubscribedSkuCollectionFetcher *)skip:(int)value;
- (MSDirectorySubscribedSkuCollectionFetcher *)expand:(NSString *)value;
- (MSDirectorySubscribedSkuCollectionFetcher *)orderBy:(NSString *)params;
- (MSDirectorySubscribedSkuCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSDirectorySubscribedSkuCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end