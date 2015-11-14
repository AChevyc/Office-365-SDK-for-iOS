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



#import "MSOutlookModels.h"
#import "core/MSOrcObjectizer.h"


/** Implementation for MSOutlookMessage
 *
 */
@implementation MSOutlookMessage


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
        if(_$$$_$$$propertiesNamesMappings==nil) {
    
        _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"ReceivedDateTime", @"receivedDateTime", @"SentDateTime", @"sentDateTime", @"HasAttachments", @"hasAttachments", @"Subject", @"subject", @"Body", @"body", @"BodyPreview", @"bodyPreview", @"Importance", @"importance", @"ParentFolderId", @"parentFolderId", @"Sender", @"sender", @"From", @"from", @"ToRecipients", @"toRecipients", @"CcRecipients", @"ccRecipients", @"BccRecipients", @"bccRecipients", @"ReplyTo", @"replyTo", @"ConversationId", @"conversationId", @"UniqueBody", @"uniqueBody", @"IsDeliveryReceiptRequested", @"isDeliveryReceiptRequested", @"IsReadReceiptRequested", @"isReadReceiptRequested", @"IsRead", @"isRead", @"IsDraft", @"isDraft", @"WebLink", @"webLink", @"Attachments", @"attachments", @"CreatedDateTime", @"createdDateTime", @"LastModifiedDateTime", @"lastModifiedDateTime", @"ChangeKey", @"changeKey", @"Categories", @"categories", @"Id", @"_id", nil];
        
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.OutlookServices.Message";
        
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
        if(dic!=nil) {
		_receivedDateTime = (![dic objectForKey: @"ReceivedDateTime"] || [ [dic objectForKey: @"ReceivedDateTime"] isKindOfClass:[NSNull class]] )?_receivedDateTime:[MSOrcObjectizer dateFromString:[dic objectForKey: @"ReceivedDateTime"]];
		_sentDateTime = (![dic objectForKey: @"SentDateTime"] || [ [dic objectForKey: @"SentDateTime"] isKindOfClass:[NSNull class]] )?_sentDateTime:[MSOrcObjectizer dateFromString:[dic objectForKey: @"SentDateTime"]];
		_hasAttachments = (![dic objectForKey: @"HasAttachments"] || [ [dic objectForKey: @"HasAttachments"] isKindOfClass:[NSNull class]] )?_hasAttachments:[[dic objectForKey: @"HasAttachments"] boolValue];
		_subject = (![dic objectForKey: @"Subject"] || [ [dic objectForKey: @"Subject"] isKindOfClass:[NSNull class]] )?_subject:[[dic objectForKey: @"Subject"] copy];
		_body = (![dic objectForKey: @"Body"] || [ [dic objectForKey: @"Body"] isKindOfClass:[NSNull class]] )?_body:[[MSOutlookItemBody alloc] initWithDictionary: [dic objectForKey: @"Body"]];
		_bodyPreview = (![dic objectForKey: @"BodyPreview"] || [ [dic objectForKey: @"BodyPreview"] isKindOfClass:[NSNull class]] )?_bodyPreview:[[dic objectForKey: @"BodyPreview"] copy];
		_importance = (![dic objectForKey: @"Importance"] || [ [dic objectForKey: @"Importance"] isKindOfClass:[NSNull class]] )?_importance:[MSOutlookImportanceSerializer fromString:[dic objectForKey: @"Importance"]];
		_parentFolderId = (![dic objectForKey: @"ParentFolderId"] || [ [dic objectForKey: @"ParentFolderId"] isKindOfClass:[NSNull class]] )?_parentFolderId:[[dic objectForKey: @"ParentFolderId"] copy];
		_sender = (![dic objectForKey: @"Sender"] || [ [dic objectForKey: @"Sender"] isKindOfClass:[NSNull class]] )?_sender:[[MSOutlookRecipient alloc] initWithDictionary: [dic objectForKey: @"Sender"]];
		_from = (![dic objectForKey: @"From"] || [ [dic objectForKey: @"From"] isKindOfClass:[NSNull class]] )?_from:[[MSOutlookRecipient alloc] initWithDictionary: [dic objectForKey: @"From"]];

        if([dic objectForKey: @"ToRecipients"] != [NSNull null]){
            _toRecipients = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"ToRecipients"]) {
                [_toRecipients addObject:[[MSOutlookRecipient alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)_toRecipients resetChangedFlag];
        }
        

        if([dic objectForKey: @"CcRecipients"] != [NSNull null]){
            _ccRecipients = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"CcRecipients"]) {
                [_ccRecipients addObject:[[MSOutlookRecipient alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)_ccRecipients resetChangedFlag];
        }
        

        if([dic objectForKey: @"BccRecipients"] != [NSNull null]){
            _bccRecipients = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"BccRecipients"]) {
                [_bccRecipients addObject:[[MSOutlookRecipient alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)_bccRecipients resetChangedFlag];
        }
        

        if([dic objectForKey: @"ReplyTo"] != [NSNull null]){
            _replyTo = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"ReplyTo"]) {
                [_replyTo addObject:[[MSOutlookRecipient alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)_replyTo resetChangedFlag];
        }
        
		_conversationId = (![dic objectForKey: @"ConversationId"] || [ [dic objectForKey: @"ConversationId"] isKindOfClass:[NSNull class]] )?_conversationId:[[dic objectForKey: @"ConversationId"] copy];
		_uniqueBody = (![dic objectForKey: @"UniqueBody"] || [ [dic objectForKey: @"UniqueBody"] isKindOfClass:[NSNull class]] )?_uniqueBody:[[MSOutlookItemBody alloc] initWithDictionary: [dic objectForKey: @"UniqueBody"]];
		_isDeliveryReceiptRequested = (![dic objectForKey: @"IsDeliveryReceiptRequested"] || [ [dic objectForKey: @"IsDeliveryReceiptRequested"] isKindOfClass:[NSNull class]] )?_isDeliveryReceiptRequested:[[dic objectForKey: @"IsDeliveryReceiptRequested"] boolValue];
		_isReadReceiptRequested = (![dic objectForKey: @"IsReadReceiptRequested"] || [ [dic objectForKey: @"IsReadReceiptRequested"] isKindOfClass:[NSNull class]] )?_isReadReceiptRequested:[[dic objectForKey: @"IsReadReceiptRequested"] boolValue];
		_isRead = (![dic objectForKey: @"IsRead"] || [ [dic objectForKey: @"IsRead"] isKindOfClass:[NSNull class]] )?_isRead:[[dic objectForKey: @"IsRead"] boolValue];
		_isDraft = (![dic objectForKey: @"IsDraft"] || [ [dic objectForKey: @"IsDraft"] isKindOfClass:[NSNull class]] )?_isDraft:[[dic objectForKey: @"IsDraft"] boolValue];
		_webLink = (![dic objectForKey: @"WebLink"] || [ [dic objectForKey: @"WebLink"] isKindOfClass:[NSNull class]] )?_webLink:[[dic objectForKey: @"WebLink"] copy];

        if([dic objectForKey: @"Attachments"] != [NSNull null]){
            _attachments = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"Attachments"]) {
                [_attachments addObject:[[MSOutlookAttachment alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)_attachments resetChangedFlag];
        }
        
		self.createdDateTime = (![dic objectForKey: @"CreatedDateTime"] || [ [dic objectForKey: @"CreatedDateTime"] isKindOfClass:[NSNull class]] )?self.createdDateTime:[MSOrcObjectizer dateFromString:[dic objectForKey: @"CreatedDateTime"]];
		self.lastModifiedDateTime = (![dic objectForKey: @"LastModifiedDateTime"] || [ [dic objectForKey: @"LastModifiedDateTime"] isKindOfClass:[NSNull class]] )?self.lastModifiedDateTime:[MSOrcObjectizer dateFromString:[dic objectForKey: @"LastModifiedDateTime"]];
		self.changeKey = (![dic objectForKey: @"ChangeKey"] || [ [dic objectForKey: @"ChangeKey"] isKindOfClass:[NSNull class]] )?self.changeKey:[[dic objectForKey: @"ChangeKey"] copy];

        if([dic objectForKey: @"Categories"] != [NSNull null]){
            self.categories = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"Categories"]) {
                [self.categories addObject:[object copy]];
            }
            
            [(MSOrcChangesTrackingArray *)self.categories resetChangedFlag];
        }
        
		self._id = (![dic objectForKey: @"Id"] || [ [dic objectForKey: @"Id"] isKindOfClass:[NSNull class]] )?self._id:[[dic objectForKey: @"Id"] copy];
    }
    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [MSOrcObjectizer stringFromDate:self.receivedDateTime];if (curVal!=nil) [dic setValue: curVal forKey: @"ReceivedDateTime"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.sentDateTime];if (curVal!=nil) [dic setValue: curVal forKey: @"SentDateTime"];}
	{[dic setValue: (self.hasAttachments?@"true":@"false") forKey: @"HasAttachments"];}
	{id curVal = [self.subject copy];if (curVal!=nil) [dic setValue: curVal forKey: @"Subject"];}
	{id curVal = [self.body toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"Body"];}
	{id curVal = [self.bodyPreview copy];if (curVal!=nil) [dic setValue: curVal forKey: @"BodyPreview"];}
	{[dic setValue: [MSOutlookImportanceSerializer toString:self.importance] forKey: @"Importance"];}
	{id curVal = [self.parentFolderId copy];if (curVal!=nil) [dic setValue: curVal forKey: @"ParentFolderId"];}
	{id curVal = [self.sender toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"Sender"];}
	{id curVal = [self.from toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"From"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.toRecipients) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"ToRecipients"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.ccRecipients) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"CcRecipients"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.bccRecipients) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"BccRecipients"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.replyTo) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"ReplyTo"];}
	{id curVal = [self.conversationId copy];if (curVal!=nil) [dic setValue: curVal forKey: @"ConversationId"];}
	{id curVal = [self.uniqueBody toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"UniqueBody"];}
	{[dic setValue: (self.isDeliveryReceiptRequested?@"true":@"false") forKey: @"IsDeliveryReceiptRequested"];}
	{[dic setValue: (self.isReadReceiptRequested?@"true":@"false") forKey: @"IsReadReceiptRequested"];}
	{[dic setValue: (self.isRead?@"true":@"false") forKey: @"IsRead"];}
	{[dic setValue: (self.isDraft?@"true":@"false") forKey: @"IsDraft"];}
	{id curVal = [self.webLink copy];if (curVal!=nil) [dic setValue: curVal forKey: @"WebLink"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.attachments) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"Attachments"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.createdDateTime];if (curVal!=nil) [dic setValue: curVal forKey: @"CreatedDateTime"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.lastModifiedDateTime];if (curVal!=nil) [dic setValue: curVal forKey: @"LastModifiedDateTime"];}
	{id curVal = [self.changeKey copy];if (curVal!=nil) [dic setValue: curVal forKey: @"ChangeKey"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.categories) {
       [curVal addObject:[obj copy]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"Categories"];}
	{id curVal = [self._id copy];if (curVal!=nil) [dic setValue: curVal forKey: @"Id"];}
    [dic setValue: @"#Microsoft.OutlookServices.Message" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.receivedDateTime;
    if([self.updatedValues containsObject:@"ReceivedDateTime"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"ReceivedDateTime"];
            }
    }
	{id curVal = self.sentDateTime;
    if([self.updatedValues containsObject:@"SentDateTime"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"SentDateTime"];
            }
    }
 if([self.updatedValues containsObject:@"HasAttachments"])
            { [dic setValue: (self.hasAttachments?@"true":@"false") forKey: @"HasAttachments"];
}	{id curVal = self.subject;
    if([self.updatedValues containsObject:@"Subject"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"Subject"];
            }
    }
	{id curVal = self.body;
    if([self.updatedValues containsObject:@"Body"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"Body"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"Body"];
            }
        
            }}
	{id curVal = self.bodyPreview;
    if([self.updatedValues containsObject:@"BodyPreview"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"BodyPreview"];
            }
    }
 if([self.updatedValues containsObject:@"Importance"])
            { [dic setValue: [MSOutlookImportanceSerializer toString:self.importance] forKey: @"Importance"];
}	{id curVal = self.parentFolderId;
    if([self.updatedValues containsObject:@"ParentFolderId"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"ParentFolderId"];
            }
    }
	{id curVal = self.sender;
    if([self.updatedValues containsObject:@"Sender"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"Sender"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"Sender"];
            }
        
            }}
	{id curVal = self.from;
    if([self.updatedValues containsObject:@"From"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"From"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"From"];
            }
        
            }}
	{id curVal = self.toRecipients;
    if([self.updatedValues containsObject:@"ToRecipients"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"ToRecipients"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.toRecipients) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"ToRecipients"];
        }
        
            }}
	{id curVal = self.ccRecipients;
    if([self.updatedValues containsObject:@"CcRecipients"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"CcRecipients"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.ccRecipients) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"CcRecipients"];
        }
        
            }}
	{id curVal = self.bccRecipients;
    if([self.updatedValues containsObject:@"BccRecipients"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"BccRecipients"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.bccRecipients) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"BccRecipients"];
        }
        
            }}
	{id curVal = self.replyTo;
    if([self.updatedValues containsObject:@"ReplyTo"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"ReplyTo"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.replyTo) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"ReplyTo"];
        }
        
            }}
	{id curVal = self.conversationId;
    if([self.updatedValues containsObject:@"ConversationId"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"ConversationId"];
            }
    }
	{id curVal = self.uniqueBody;
    if([self.updatedValues containsObject:@"UniqueBody"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"UniqueBody"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"UniqueBody"];
            }
        
            }}
 if([self.updatedValues containsObject:@"IsDeliveryReceiptRequested"])
            { [dic setValue: (self.isDeliveryReceiptRequested?@"true":@"false") forKey: @"IsDeliveryReceiptRequested"];
} if([self.updatedValues containsObject:@"IsReadReceiptRequested"])
            { [dic setValue: (self.isReadReceiptRequested?@"true":@"false") forKey: @"IsReadReceiptRequested"];
} if([self.updatedValues containsObject:@"IsRead"])
            { [dic setValue: (self.isRead?@"true":@"false") forKey: @"IsRead"];
} if([self.updatedValues containsObject:@"IsDraft"])
            { [dic setValue: (self.isDraft?@"true":@"false") forKey: @"IsDraft"];
}	{id curVal = self.webLink;
    if([self.updatedValues containsObject:@"WebLink"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"WebLink"];
            }
    }
	{id curVal = self.attachments;
    if([self.updatedValues containsObject:@"Attachments"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"Attachments"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.attachments) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"Attachments"];
        }
        
            }}
	{id curVal = self.createdDateTime;
    if([self.updatedValues containsObject:@"CreatedDateTime"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"CreatedDateTime"];
            }
    }
	{id curVal = self.lastModifiedDateTime;
    if([self.updatedValues containsObject:@"LastModifiedDateTime"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"LastModifiedDateTime"];
            }
    }
	{id curVal = self.changeKey;
    if([self.updatedValues containsObject:@"ChangeKey"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"ChangeKey"];
            }
    }
	{id curVal = self.categories;
    if([self.updatedValues containsObject:@"Categories"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj copy]];
    }
    
            [dic setValue: curArray forKey: @"Categories"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.categories) {
       [curArray addObject:[obj copy]];
    }
    
                 [dic setValue: curArray forKey: @"Categories"];
        }
        
            }}
	{id curVal = self._id;
    if([self.updatedValues containsObject:@"Id"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"Id"];
            }
    }
    return dic;
}


/** Setter implementation for property receivedDateTime
 *
 */
- (void) setReceivedDateTime: (NSDate *) value {
    _receivedDateTime = value;
    [self valueChangedFor:@"ReceivedDateTime"];
}
       
/** Setter implementation for property sentDateTime
 *
 */
- (void) setSentDateTime: (NSDate *) value {
    _sentDateTime = value;
    [self valueChangedFor:@"SentDateTime"];
}
       
/** Setter implementation for property hasAttachments
 *
 */
- (void) setHasAttachments: (bool) value {
    _hasAttachments = value;
    [self valueChangedFor:@"HasAttachments"];
}
       
/** Setter implementation for property subject
 *
 */
- (void) setSubject: (NSString *) value {
    _subject = value;
    [self valueChangedFor:@"Subject"];
}
       
/** Setter implementation for property body
 *
 */
- (void) setBody: (MSOutlookItemBody *) value {
    _body = value;
    [self valueChangedFor:@"Body"];
}
       
/** Setter implementation for property bodyPreview
 *
 */
- (void) setBodyPreview: (NSString *) value {
    _bodyPreview = value;
    [self valueChangedFor:@"BodyPreview"];
}
       
/** Setter implementation for property importance
 *
 */
- (void) setImportance: (MSOutlookImportance) value {
    _importance = value;
    [self valueChangedFor:@"Importance"];
}
       

- (void)setImportanceString:(NSString *)string {
        
    _importance = [MSOutlookImportanceSerializer fromString:string];
    [self valueChangedFor:@"Importance"]; 
}

/** Setter implementation for property parentFolderId
 *
 */
- (void) setParentFolderId: (NSString *) value {
    _parentFolderId = value;
    [self valueChangedFor:@"ParentFolderId"];
}
       
/** Setter implementation for property sender
 *
 */
- (void) setSender: (MSOutlookRecipient *) value {
    _sender = value;
    [self valueChangedFor:@"Sender"];
}
       
/** Setter implementation for property from
 *
 */
- (void) setFrom: (MSOutlookRecipient *) value {
    _from = value;
    [self valueChangedFor:@"From"];
}
       
/** Setter implementation for property toRecipients
 *
 */
- (void) setToRecipients: (NSMutableArray *) value {
    _toRecipients = value;
    [self valueChangedFor:@"ToRecipients"];
}
       
/** Setter implementation for property ccRecipients
 *
 */
- (void) setCcRecipients: (NSMutableArray *) value {
    _ccRecipients = value;
    [self valueChangedFor:@"CcRecipients"];
}
       
/** Setter implementation for property bccRecipients
 *
 */
- (void) setBccRecipients: (NSMutableArray *) value {
    _bccRecipients = value;
    [self valueChangedFor:@"BccRecipients"];
}
       
/** Setter implementation for property replyTo
 *
 */
- (void) setReplyTo: (NSMutableArray *) value {
    _replyTo = value;
    [self valueChangedFor:@"ReplyTo"];
}
       
/** Setter implementation for property conversationId
 *
 */
- (void) setConversationId: (NSString *) value {
    _conversationId = value;
    [self valueChangedFor:@"ConversationId"];
}
       
/** Setter implementation for property uniqueBody
 *
 */
- (void) setUniqueBody: (MSOutlookItemBody *) value {
    _uniqueBody = value;
    [self valueChangedFor:@"UniqueBody"];
}
       
/** Setter implementation for property isDeliveryReceiptRequested
 *
 */
- (void) setIsDeliveryReceiptRequested: (bool) value {
    _isDeliveryReceiptRequested = value;
    [self valueChangedFor:@"IsDeliveryReceiptRequested"];
}
       
/** Setter implementation for property isReadReceiptRequested
 *
 */
- (void) setIsReadReceiptRequested: (bool) value {
    _isReadReceiptRequested = value;
    [self valueChangedFor:@"IsReadReceiptRequested"];
}
       
/** Setter implementation for property isRead
 *
 */
- (void) setIsRead: (bool) value {
    _isRead = value;
    [self valueChangedFor:@"IsRead"];
}
       
/** Setter implementation for property isDraft
 *
 */
- (void) setIsDraft: (bool) value {
    _isDraft = value;
    [self valueChangedFor:@"IsDraft"];
}
       
/** Setter implementation for property webLink
 *
 */
- (void) setWebLink: (NSString *) value {
    _webLink = value;
    [self valueChangedFor:@"WebLink"];
}
       
/** Setter implementation for property attachments
 *
 */
- (void) setAttachments: (NSMutableArray *) value {
    _attachments = value;
    [self valueChangedFor:@"Attachments"];
}
       

@end
