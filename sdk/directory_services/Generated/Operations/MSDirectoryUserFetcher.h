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
@class MSDirectoryOAuth2PermissionGrantFetcher;
@class MSDirectoryOAuth2PermissionGrantCollectionFetcher;
@class MSDirectoryDirectoryObjectFetcher;
@class MSDirectoryDirectoryObjectCollectionFetcher;
@class MSDirectoryUserOperations;

#import <core/core.h>
#import "MSDirectoryModels.h"

/**
* The header for type MSDirectoryUserFetcher.
*/


@interface MSDirectoryUserFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSDirectoryUserOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void) readWithCallback:(void (^)(MSDirectoryUser *user, MSOrcError *error))callback;
- (void)update:(MSDirectoryUser *)user callback:(void(^)(MSDirectoryUser *user, MSOrcError *error))callback;
- (void)delete:(void(^)(int status, MSOrcError *error))callback;
- (MSDirectoryUserFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSDirectoryUserFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSDirectoryUserFetcher *)select:(NSString *)params;
- (MSDirectoryUserFetcher *)expand:(NSString *)value;
@property (retain, nonatomic, readonly, getter=appRoleAssignments) MSDirectoryAppRoleAssignmentCollectionFetcher *appRoleAssignments;

- (MSDirectoryAppRoleAssignmentFetcher *)getAppRoleAssignmentsById:(NSString*)id;

@property (retain, nonatomic, readonly, getter=oauth2PermissionGrants) MSDirectoryOAuth2PermissionGrantCollectionFetcher *oauth2PermissionGrants;

- (MSDirectoryOAuth2PermissionGrantFetcher *)getOauth2PermissionGrantsById:(NSString*)id;

@property (retain, nonatomic, readonly, getter=ownedDevices) MSDirectoryDirectoryObjectCollectionFetcher *ownedDevices;

- (MSDirectoryDirectoryObjectFetcher *)getOwnedDevicesById:(NSString*)id;

@property (retain, nonatomic, readonly, getter=registeredDevices) MSDirectoryDirectoryObjectCollectionFetcher *registeredDevices;

- (MSDirectoryDirectoryObjectFetcher *)getRegisteredDevicesById:(NSString*)id;


@end