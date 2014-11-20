//
//  NSDictionary+Coldworks.m
//  lengtucao
//
//  Created by ly on 13-12-10.
//  Copyright (c) 2013年 ly. All rights reserved.
//

#import "NSDictionary+Coldworks.h"

@implementation NSDictionary (Coldworks)

- (NSString *)parameterString
{
    NSArray *keys = [self allKeys];
    NSInteger count = [keys count];
    
    NSMutableString *params = [NSMutableString stringWithString:@""];
    
    for(NSInteger i = 0; i < count; i++)
    {
        NSString *key = keys[i];
        NSString *value = nil;
        
        id obj = [self objectForKey:key];
        if ([obj isKindOfClass:[NSNumber class]]) {
            value = [obj stringValue];
        }
        else if ([obj isKindOfClass:[NSString class]]) {
            value = obj;
        }
        else {
            value = [obj description];
        }
        
        if (i > 0) {
            [params appendFormat:@"&%@=%@", key, value];
        } else {
            [params appendFormat:@"%@=%@", key, value];
        }
    }
    return params;
}

@end
