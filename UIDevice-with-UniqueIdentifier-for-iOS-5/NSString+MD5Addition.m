//
//  NSString+MD5Addition.m
//  UIDeviceAddition
//
//  Created by Georg Kitz on 20.08.11.
//  Copyright 2011 Aurora Apps. All rights reserved.
//

#import "NSString+MD5Addition.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString(MD5Addition)

- (NSString *) stringFromMD5
{

    if(self == nil || [self length] == 0)
        return nil;

    const char *value = [self UTF8String];

    unsigned char outputBuffer[CC_MD5_DIGEST_LENGTH];
    size_t valueLength = strlen(value);
    CC_LONG castedValueLength = (CC_LONG)valueLength;
    CC_MD5(value, castedValueLength, outputBuffer);

    NSMutableString *outputString = [ NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2 ];
    for(NSInteger count = 0; count < CC_MD5_DIGEST_LENGTH; count++)
    {
        [outputString appendFormat:@"%02x",outputBuffer[count]];
    }

    return outputString;
}

@end
