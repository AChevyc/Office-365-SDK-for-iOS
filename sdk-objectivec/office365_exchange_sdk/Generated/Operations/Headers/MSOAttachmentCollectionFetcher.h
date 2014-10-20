/*******************************************************************************
 * Copyright (c) Microsoft Open Technologies, Inc.
 * All Rights Reserved
 * See License.txt in the project root for license information.
 ******************************************************************************/

#import "MSOAttachment.h"
#import "MSOAttachmentFetcher.h"

/**
* The header for type MSOAttachmentCollectionFetcher.
*/

@interface MSOAttachmentCollectionFetcher : MSOODataCollectionFetcher

-(id)initWith:(NSString *)urlComponent :(id<MSOODataExecutable>)parent;
-(NSURLSessionDataTask*)execute:(void (^)(NSArray<MSOAttachment> *Attachment, NSError *error))callback;

-(NSURLSessionDataTask*)add:(MSOAttachment* )entity :(void (^)(MSOAttachment *attachment, NSError *e))callback;

-(MSOAttachmentFetcher*)getById:(NSString *)Id;
@end
