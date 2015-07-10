/*******************************************************************************
Copyright (c) Microsoft Open Technologies, Inc. All Rights Reserved.
Licensed under the MIT or Apache License; see LICENSE in the source repository
root for authoritative license information.﻿

**NOTE** This code was generated by a tool and will occasionally be
overwritten. We welcome comments and issues regarding this code; they will be
addressed in the generation tool. If you wish to submit pull requests, please
do so for the templates in that tool.

This code was generated by Vipr (https://github.com/microsoft/vipr) using
the T4TemplateWriter (https://github.com/msopentech/vipr-t4templatewriter).
******************************************************************************/
@class MSSampleContainerAnotherEntityFetcher;;
@class MSSampleContainerSampleEntityFetcher;;
@class MSSampleContainerEntityOperations;

#import <office365_odata_base/office365_odata_base.h>
#import "MSSampleContainerModels.h"

/**
* The header for type MSSampleContainerEntityFetcher.
*/


@protocol MSSampleContainerEntityFetcher<MSODataEntityFetcher>

@optional
- (NSURLSessionTask *) readWithCallback:(void (^)(MSSampleContainerEntity *entity, MSODataException *exception))callback;
- (id<MSSampleContainerEntityFetcher>)addCustomParametersWithName:(NSString *)name value:(id)value;
- (id<MSSampleContainerEntityFetcher>)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (id<MSSampleContainerEntityFetcher>)select:(NSString *)params;
- (id<MSSampleContainerEntityFetcher>)expand:(NSString *)value;

@required

@property (copy, nonatomic, readonly) MSSampleContainerEntityOperations *operations;
	
- (MSSampleContainerAnotherEntityFetcher *)asAnotherEntity;	
	
- (MSSampleContainerSampleEntityFetcher *)asSampleEntity;	
@end

@interface MSSampleContainerEntityFetcher : MSODataEntityFetcher<MSSampleContainerEntityFetcher>

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSODataExecutable>)parent;
- (NSURLSessionTask *) updateEntity:(MSSampleContainerEntity *)entity withCallback:(void (^)(MSSampleContainerEntity *entity, MSODataException *error))callback;
- (NSURLSessionTask *) deleteEntity:(void (^)(int status, MSODataException *exception))callback;

@end