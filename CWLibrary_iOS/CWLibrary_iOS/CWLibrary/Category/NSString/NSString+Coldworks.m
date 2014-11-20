//
//  NSString+Coldworks.m
//  lengtucao
//
//  Created by ly on 13-10-19.
//  Copyright (c) 2013年 ly. All rights reserved.
//

#import "NSString+Coldworks.h"

@implementation NSString (Lengtucao)

/* 删除字符串中任意位置的换行符 */
- (NSString *)removeNewLines
{
    return [self stringByReplacingOccurrencesOfString:@"\n" withString:@""
                 options:NSBackwardsSearch range:[self stringRange]];
}

- (NSRange)stringRange
{
    return NSMakeRange(0, [self length]);
}

- (BOOL)stringLengthInMin:(NSUInteger)minLength max:(NSUInteger)maxLength
{
    NSUInteger length = [self length];
    return ( (length>=minLength) && (length<=maxLength) );
}

- (BOOL)punctuationCharacterExists
{
    NSRange punctuationRange = [self rangeOfCharacterFromSet:[NSCharacterSet punctuationCharacterSet]];
    if (punctuationRange.location == NSNotFound) {
        return NO;
    }
    return YES;
}

@end
