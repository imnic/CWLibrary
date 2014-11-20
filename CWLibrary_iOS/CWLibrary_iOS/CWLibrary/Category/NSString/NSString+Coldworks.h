//
//  NSString+Coldworks.h
//  lengtucao
//
//  Created by ly on 13-10-19.
//  Copyright (c) 2013年 ly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Lengtucao)

/** 删除字符串中任意位置的换行符 */
- (NSString *)removeNewLines;

/** 字符串的range
 @discussion range 的 location 为 0，length 为 string 对象的 length
 */
- (NSRange)stringRange;

- (BOOL)stringLengthInMin:(NSUInteger)minLength max:(NSUInteger)maxLength;

- (BOOL)punctuationCharacterExists;

@end
