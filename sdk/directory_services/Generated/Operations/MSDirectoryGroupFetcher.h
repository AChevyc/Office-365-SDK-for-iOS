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
@class MSDirectoryAppRoleAssignmentFetcher;
@class MSDirectoryAppRoleAssignmentCollectionFetcher;
@class MSDirectoryGroupOperations;

#import <core/core.h>
#import "MSDirectoryModels.h"

/**
* The header for type MSDirectoryGroupFetcher.
*/


@interface MSDirectoryGroupFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSDirectoryGroupOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void) readWithCallback:(void (^)(MSDirectoryGroup *group, MSOrcError *error))callback;
- (void)update:(MSDirectoryGroup *)group callback:(void(^)(MSDirectoryGroup *group, MSOrcError *error))callback;
- (void)delete:(void(^)(int status, MSOrcError *error))callback;
- (MSDirectoryGroupFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSDirectoryGroupFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSDirectoryGroupFetcher *)select:(NSString *)params;
- (MSDirectoryGroupFetcher *)expand:(NSString *)value;
@property (retain, nonatomic, readonly, getter=appRoleAssignments) MSDirectoryAppRoleAssignmentCollectionFetcher *appRoleAssignments;

- (MSDirectoryAppRoleAssignmentFetcher *)getAppRoleAssignmentsById:(NSString*)id;


@end